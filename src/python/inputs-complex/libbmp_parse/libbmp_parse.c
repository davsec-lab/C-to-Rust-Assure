/* Copyright 2016 - 2017 Marc Volker Dickmann
 * Project: LibBMP
 */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <dirent.h>
#include <time.h>

static int get_now(struct timespec *ts)
{
	return clock_gettime(CLOCK_MONOTONIC, ts);
}

static long long elapsed_ms_since(const struct timespec *t0, const struct timespec *t1)
{
	long long sec_diff = (long long)(t1->tv_sec - t0->tv_sec);
	long long nsec_diff = (long long)(t1->tv_nsec - t0->tv_nsec);
	return sec_diff * 1000LL + nsec_diff / 1000000LL;
}

#define BMP_MAGIC 19778

#define BMP_GET_PADDING(a) ((a) % 4)

enum bmp_error
{
	BMP_FILE_NOT_OPENED = -4,
	BMP_HEADER_NOT_INITIALIZED,
	BMP_INVALID_FILE,
	BMP_ERROR,
	BMP_OK = 0
};

typedef struct _bmp_header
{
	unsigned int   bfSize;
	unsigned int   bfReserved;
	unsigned int   bfOffBits;
	
	unsigned int   biSize;
	int            biWidth;
	int            biHeight;
	unsigned short biPlanes;
	unsigned short biBitCount;
	unsigned int   biCompression;
	unsigned int   biSizeImage;
	int            biXPelsPerMeter;
	int            biYPelsPerMeter;
	unsigned int   biClrUsed;
	unsigned int   biClrImportant;
} bmp_header;

typedef struct _bmp_pixel
{
	unsigned char blue;
	unsigned char green;
	unsigned char red;
} bmp_pixel;

#define BMP_PIXEL(r,g,b) ((bmp_pixel){(b),(g),(r)})

typedef struct _bmp_img
{
	bmp_header   img_header;
	bmp_pixel  **img_pixels;
} bmp_img;


// BMP_HEADER

void
bmp_header_init_df (bmp_header *header,
                    const int   width,
                    const int   height)
{
	header->bfSize = (sizeof (bmp_pixel) * width + BMP_GET_PADDING (width))
	                  * abs (height);
	header->bfReserved = 0;
	header->bfOffBits = 54;
	header->biSize = 40;
	header->biWidth = width;
	header->biHeight = height;
	header->biPlanes = 1;
	header->biBitCount = 24;
	header->biCompression = 0;
	header->biSizeImage = 0;
	header->biXPelsPerMeter = 0;
	header->biYPelsPerMeter = 0;
	header->biClrUsed = 0;
	header->biClrImportant = 0;
}

enum bmp_error
bmp_header_write (const bmp_header *header,
                  FILE             *img_file)
{
	if (header == NULL)
	{
		return BMP_HEADER_NOT_INITIALIZED; 
	}
	else if (img_file == NULL)
	{
		return BMP_FILE_NOT_OPENED;
	}
	
	// Since an adress must be passed to fwrite, create a variable!
	const unsigned short magic = BMP_MAGIC;
	fwrite (&magic, sizeof (magic), 1, img_file);
	
	// Use the type instead of the variable because its a pointer!
	fwrite (header, sizeof (bmp_header), 1, img_file);
	return BMP_OK;
}

enum bmp_error
bmp_header_read (bmp_header *header,
                 FILE       *img_file)
{
	if (img_file == NULL)
	{
		return BMP_FILE_NOT_OPENED;
	}
	
	// Since an adress must be passed to fread, create a variable!
	unsigned short magic;
	
	// Check if its an bmp file by comparing the magic nbr:
	if (fread (&magic, sizeof (magic), 1, img_file) != 1 ||
	    magic != BMP_MAGIC)
	{
		return BMP_INVALID_FILE;
	}
	
	if (fread (header, sizeof (bmp_header), 1, img_file) != 1)
	{
		return BMP_ERROR;
	}

	return BMP_OK;
}

// BMP_PIXEL

void
bmp_pixel_init (bmp_pixel           *pxl,
                const unsigned char  red,
                const unsigned char  green,
                const unsigned char  blue)
{
	pxl->red = red;
	pxl->green = green;
	pxl->blue = blue;
}

// BMP_IMG

void
bmp_img_alloc (bmp_img *img)
{
	const size_t h = abs (img->img_header.biHeight);
	
	// Allocate the required memory for the pixels:
	img->img_pixels = malloc (sizeof (bmp_pixel*) * h);
	
	for (size_t y = 0; y < h; y++)
	{
		img->img_pixels[y] = malloc (sizeof (bmp_pixel) * img->img_header.biWidth);
	}
}

void
bmp_img_init_df (bmp_img   *img,
                 const int  width,
                 const int  height)
{
	// INIT the header with default values:
	bmp_header_init_df (&img->img_header, width, height);
	bmp_img_alloc (img);
}

void
bmp_img_free (bmp_img *img)
{
	const size_t h = abs (img->img_header.biHeight);
	
	for (size_t y = 0; y < h; y++)
	{
		free (img->img_pixels[y]);
	}
	free (img->img_pixels);
}

enum bmp_error
bmp_img_write (const bmp_img *img,
               const char    *filename)
{
	FILE *img_file = fopen (filename, "wb");
	
	if (img_file == NULL)
	{
		return BMP_FILE_NOT_OPENED;
	}
	
	// NOTE: This way the correct error code could be returned.
	const enum bmp_error err = bmp_header_write (&img->img_header, img_file);
	
	if (err != BMP_OK)
	{
		// ERROR: Could'nt write the header!
		fclose (img_file);
		return err;
	}
	
	// Select the mode (bottom-up or top-down):
	const size_t h = abs (img->img_header.biHeight);
	const size_t offset = (img->img_header.biHeight > 0 ? h - 1 : 0);
	
	// Create the padding:
	const unsigned char padding[3] = {'\0', '\0', '\0'};
	
	// Write the content:
	for (size_t y = 0; y < h; y++)
	{
		// Write a whole row of pixels to the file:
		fwrite (img->img_pixels[abs (offset - y)], sizeof (bmp_pixel), img->img_header.biWidth, img_file);
		
		// Write the padding for the row!
		fwrite (padding, sizeof (unsigned char), BMP_GET_PADDING (img->img_header.biWidth), img_file);
	}
	
	// NOTE: All good!
	fclose (img_file);
	return BMP_OK;
}

enum bmp_error
bmp_img_read (bmp_img    *img,
              const char *filename)
{
	FILE *img_file = fopen (filename, "rb");
	
	if (img_file == NULL)
	{
		return BMP_FILE_NOT_OPENED;
	}
	
	// NOTE: This way the correct error code can be returned.
	const enum bmp_error err = bmp_header_read (&img->img_header, img_file);
	
	if (err != BMP_OK)
	{
		// ERROR: Could'nt read the image header!
		fclose (img_file);
		return err;
	}
	
	bmp_img_alloc (img);
	
	// Select the mode (bottom-up or top-down):
	const size_t h = abs (img->img_header.biHeight);
	const size_t offset = (img->img_header.biHeight > 0 ? h - 1 : 0);
	const size_t padding = BMP_GET_PADDING (img->img_header.biWidth);
	
	// Needed to compare the return value of fread
	const size_t items = img->img_header.biWidth;
	
	// Read the content:
	for (size_t y = 0; y < h; y++)
	{
		// Read a whole row of pixels from the file:
		if (fread (img->img_pixels[abs (offset - y)], sizeof (bmp_pixel), items, img_file) != items)
		{
			fclose (img_file);
			return BMP_ERROR;
		}
		
		// Skip the padding:
		fseek (img_file, padding, SEEK_CUR);
	}
	
	// NOTE: All good!
	fclose (img_file);
	return BMP_OK;
}

int main(int argc, char **argv) {
	if (argc < 2) {
		printf("Usage: %s <directory>\n", argv[0]);
		return 1;
	}

	const char *directory = argv[1];
	DIR *dir = opendir(directory);

	if (dir == NULL) {
		printf("Error: Cannot open directory %s\n", directory);
		return 1;
	}

	unsigned long long global_checksum = 0;
	struct dirent *entry;
	int file_count = 0;

	struct timespec t0;
	struct timespec t1;

	if (get_now(&t0) != 0) {
		fprintf(stderr, "time start failed\n");
		closedir(dir);
		return 1;
	}

	while ((entry = readdir(dir)) != NULL) {
		// Check if entry is a regular file with .bmp extension
		if (entry->d_type != DT_REG) {
			continue;
		}
		
		const char *filename = entry->d_name;
		size_t len = strlen(filename);
		
		if (len < 5 || strcmp(filename + len - 4, ".bmp") != 0) {
			continue;
		}
		
		// Construct full path
		char filepath[1024];
		snprintf(filepath, sizeof(filepath), "%s/%s", directory, filename);
		
		bmp_img img;
		enum bmp_error err = bmp_img_read(&img, filepath);
		
		if (err == BMP_OK) {
			unsigned long long img_checksum = 0;
			const int h = abs(img.img_header.biHeight);
			const int w = img.img_header.biWidth;
			
			for (int y = 0; y < h; y++) {
				for (int x = 0; x < w; x++) {
					img_checksum += img.img_pixels[y][x].red;
					img_checksum += img.img_pixels[y][x].green;
					img_checksum += img.img_pixels[y][x].blue;
				}
			}
			
			global_checksum += img_checksum;
			file_count++;
			bmp_img_free(&img);
			// printf("Read %s: checksum %llu\n", filepath, img_checksum);
		} else {
			printf("Error reading %s: code %d\n", filepath, err);
		}
	}

	closedir(dir);

	if (get_now(&t1) != 0) {
		fprintf(stderr, "time end failed\n");
		return 1;
	}

	printf("Processed %d BMP files\n", file_count);
	printf("Global checksum: %llu\n", global_checksum);
	printf("elapsed_ms: %lld\n", elapsed_ms_since(&t0, &t1));
	return 0;
}
