/* Copyright 2016 - 2017 Marc Volker Dickmann
 * Project: LibBMP
 */
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <time.h>
#include <sys/stat.h>
#include <sys/time.h>
#include "libbmp.h"

typedef struct md5_ctx
{
	uint32_t state[4];
	uint64_t bit_len;
	unsigned char buffer[64];
	size_t buffer_len;
} md5_ctx;

static uint32_t
md5_left_rotate (const uint32_t value, const uint32_t shift)
{
	return (value << shift) | (value >> (32 - shift));
}

static void
md5_init (md5_ctx *ctx)
{
	ctx->state[0] = 0x67452301u;
	ctx->state[1] = 0xefcdab89u;
	ctx->state[2] = 0x98badcfeu;
	ctx->state[3] = 0x10325476u;
	ctx->bit_len = 0;
	ctx->buffer_len = 0;
}

static void
md5_transform (md5_ctx *ctx, const unsigned char block[64])
{
	static const uint32_t s[64] = {
		7, 12, 17, 22, 7, 12, 17, 22, 7, 12, 17, 22, 7, 12, 17, 22,
		5, 9, 14, 20, 5, 9, 14, 20, 5, 9, 14, 20, 5, 9, 14, 20,
		4, 11, 16, 23, 4, 11, 16, 23, 4, 11, 16, 23, 4, 11, 16, 23,
		6, 10, 15, 21, 6, 10, 15, 21, 6, 10, 15, 21, 6, 10, 15, 21
	};
	static const uint32_t k[64] = {
		0xd76aa478u, 0xe8c7b756u, 0x242070dbu, 0xc1bdceeeu,
		0xf57c0fafu, 0x4787c62au, 0xa8304613u, 0xfd469501u,
		0x698098d8u, 0x8b44f7afu, 0xffff5bb1u, 0x895cd7beu,
		0x6b901122u, 0xfd987193u, 0xa679438eu, 0x49b40821u,
		0xf61e2562u, 0xc040b340u, 0x265e5a51u, 0xe9b6c7aau,
		0xd62f105du, 0x02441453u, 0xd8a1e681u, 0xe7d3fbc8u,
		0x21e1cde6u, 0xc33707d6u, 0xf4d50d87u, 0x455a14edu,
		0xa9e3e905u, 0xfcefa3f8u, 0x676f02d9u, 0x8d2a4c8au,
		0xfffa3942u, 0x8771f681u, 0x6d9d6122u, 0xfde5380cu,
		0xa4beea44u, 0x4bdecfa9u, 0xf6bb4b60u, 0xbebfbc70u,
		0x289b7ec6u, 0xeaa127fau, 0xd4ef3085u, 0x04881d05u,
		0xd9d4d039u, 0xe6db99e5u, 0x1fa27cf8u, 0xc4ac5665u,
		0xf4292244u, 0x432aff97u, 0xab9423a7u, 0xfc93a039u,
		0x655b59c3u, 0x8f0ccc92u, 0xffeff47du, 0x85845dd1u,
		0x6fa87e4fu, 0xfe2ce6e0u, 0xa3014314u, 0x4e0811a1u,
		0xf7537e82u, 0xbd3af235u, 0x2ad7d2bbu, 0xeb86d391u
	};
	uint32_t m[16];
	uint32_t a = ctx->state[0];
	uint32_t b = ctx->state[1];
	uint32_t c = ctx->state[2];
	uint32_t d = ctx->state[3];

	for (size_t i = 0; i < 16; ++i)
	{
		const size_t j = i * 4;
		m[i] = (uint32_t) block[j]
		       | ((uint32_t) block[j + 1] << 8)
		       | ((uint32_t) block[j + 2] << 16)
		       | ((uint32_t) block[j + 3] << 24);
	}

	for (size_t i = 0; i < 64; ++i)
	{
		uint32_t f;
		uint32_t g;

		if (i < 16)
		{
			f = (b & c) | (~b & d);
			g = (uint32_t) i;
		}
		else if (i < 32)
		{
			f = (d & b) | (~d & c);
			g = (uint32_t) ((5 * i + 1) % 16);
		}
		else if (i < 48)
		{
			f = b ^ c ^ d;
			g = (uint32_t) ((3 * i + 5) % 16);
		}
		else
		{
			f = c ^ (b | ~d);
			g = (uint32_t) ((7 * i) % 16);
		}

		const uint32_t tmp = d;
		d = c;
		c = b;
		b = b + md5_left_rotate (a + f + k[i] + m[g], s[i]);
		a = tmp;
	}

	ctx->state[0] += a;
	ctx->state[1] += b;
	ctx->state[2] += c;
	ctx->state[3] += d;
}

static void
md5_update (md5_ctx *ctx, const unsigned char *data, size_t len)
{
	ctx->bit_len += (uint64_t) len * 8u;

	while (len > 0)
	{
		const size_t space = sizeof (ctx->buffer) - ctx->buffer_len;
		const size_t chunk = len < space ? len : space;

		memcpy (ctx->buffer + ctx->buffer_len, data, chunk);
		ctx->buffer_len += chunk;
		data += chunk;
		len -= chunk;

		if (ctx->buffer_len == sizeof (ctx->buffer))
		{
			md5_transform (ctx, ctx->buffer);
			ctx->buffer_len = 0;
		}
	}
}

static void
md5_final (md5_ctx *ctx, unsigned char digest[16])
{
	static const unsigned char pad = 0x80;
	unsigned char length_bytes[8];

	for (size_t i = 0; i < sizeof (length_bytes); ++i)
	{
		length_bytes[i] = (unsigned char) ((ctx->bit_len >> (8 * i)) & 0xffu);
	}

	md5_update (ctx, &pad, 1);

	while (ctx->buffer_len != 56)
	{
		static const unsigned char zero = 0;
		md5_update (ctx, &zero, 1);
	}

	md5_update (ctx, length_bytes, sizeof (length_bytes));

	for (size_t i = 0; i < 4; ++i)
	{
		digest[i * 4] = (unsigned char) (ctx->state[i] & 0xffu);
		digest[i * 4 + 1] = (unsigned char) ((ctx->state[i] >> 8) & 0xffu);
		digest[i * 4 + 2] = (unsigned char) ((ctx->state[i] >> 16) & 0xffu);
		digest[i * 4 + 3] = (unsigned char) ((ctx->state[i] >> 24) & 0xffu);
	}
}

static int
print_file_md5 (const char *filename)
{
	unsigned char digest[16];
	unsigned char buffer[4096];
	md5_ctx ctx;
	FILE *file = fopen (filename, "rb");

	if (file == NULL)
	{
		perror ("fopen");
		return -1;
	}

	md5_init (&ctx);

	for (;;)
	{
		const size_t bytes_read = fread (buffer, 1, sizeof (buffer), file);

		if (bytes_read > 0)
		{
			md5_update (&ctx, buffer, bytes_read);
		}

		if (bytes_read < sizeof (buffer))
		{
			if (ferror (file))
			{
				perror ("fread");
				fclose (file);
				return -1;
			}
			break;
		}
	}

	fclose (file);
	md5_final (&ctx, digest);

	printf ("md5: ");
	for (size_t i = 0; i < sizeof (digest); ++i)
	{
		printf ("%02x", digest[i]);
	}
	printf ("\n");

	/* Pipeline-friendly correctness line: pack the 16-byte MD5 digest as a
	   48-digit decimal string (each byte rendered as %03u, 000-255). The
	   `PerformanceMixin.extractChecksum` regex requires the literal word
	   "Checksum" + decimal digits, so the hex md5 line above doesn't qualify;
	   both halves of the digest are preserved here so no entropy is lost. */
	printf ("Checksum: ");
	for (size_t i = 0; i < sizeof (digest); ++i)
	{
		printf ("%03u", (unsigned)digest[i]);
	}
	printf ("\n");
	return 0;
}

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

static size_t
bmp_row_index (const bmp_header *header, const size_t y)
{
	const size_t h = abs (header->biHeight);
	return header->biHeight > 0 ? h - 1 - y : y;
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
	
	// Create the padding:
	const unsigned char padding[3] = {'\0', '\0', '\0'};
	
	// Write the content:
	for (size_t y = 0; y < h; y++)
	{
		// Write a whole row of pixels to the file:
		fwrite (img->img_pixels[bmp_row_index (&img->img_header, y)], sizeof (bmp_pixel), img->img_header.biWidth, img_file);
		
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
	const size_t padding = BMP_GET_PADDING (img->img_header.biWidth);
	
	// Needed to compare the return value of fread
	const size_t items = img->img_header.biWidth;
	
	// Read the content:
	for (size_t y = 0; y < h; y++)
	{
		// Read a whole row of pixels from the file:
		if (fread (img->img_pixels[bmp_row_index (&img->img_header, y)], sizeof (bmp_pixel), items, img_file) != items)
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

static int get_now(struct timespec *ts)
{
#if defined(CLOCK_MONOTONIC)
	return clock_gettime(CLOCK_MONOTONIC, ts);
#else
	struct timeval tv;

	if (gettimeofday(&tv, NULL) != 0)
	{
		return -1;
	}

	ts->tv_sec = tv.tv_sec;
	ts->tv_nsec = (long) tv.tv_usec * 1000L;
	return 0;
#endif
}


int
main (int argc, char *argv[])
{
	if (argc != 3)
	{
		fprintf (stderr, "Usage: %s <width> <height>\n", argv[0]);
		return 1;
	}

	char *endptr = NULL;
	const long width = strtol (argv[1], &endptr, 10);
	if (*argv[1] == '\0' || *endptr != '\0' || width <= 0)
	{
		fprintf (stderr, "Invalid width: %s\n", argv[1]);
		return 1;
	}

	endptr = NULL;
	const long height = strtol (argv[2], &endptr, 10);
	if (*argv[2] == '\0' || *endptr != '\0' || height <= 0)
	{
		fprintf (stderr, "Invalid height: %s\n", argv[2]);
		return 1;
	}

	struct timespec start_time;
	struct timespec end_time;
	srand (42);

	if (get_now (&start_time) != 0)
	{
		fprintf (stderr, "Failed to get start time\n");
		return 1;
	}


	bmp_img img;
	bmp_img_init_df (&img, (int) width, (int) height);

	for (long y = 0; y < height; y++)
	{
		for (long x = 0; x < width; x++)
		{
			const unsigned char red = (unsigned char) (rand () % 256);
			const unsigned char green = (unsigned char) (rand () % 256);
			const unsigned char blue = (unsigned char) (rand () % 256);
			bmp_pixel_init (&img.img_pixels[y][x], red, green, blue);
		}
	}

	const char *output_path = "../file/test.bmp";
	if (bmp_img_write (&img, output_path) != BMP_OK)
	{
		fprintf (stderr, "Failed to write BMP file: %s\n", output_path);
		bmp_img_free (&img);
		return 1;
	}

	bmp_img_free (&img);
	if (get_now (&end_time) != 0)
	{
		fprintf (stderr, "Failed to get end time\n");
		return 1;
	}

	print_file_md5 (output_path);

	double elapsed_seconds = (double)(end_time.tv_sec - start_time.tv_sec) +
                             (double)(end_time.tv_nsec - start_time.tv_nsec) / 1000000000.0;
    printf("elapsed_time_seconds: %.6f\n", elapsed_seconds);

	return 0;
}
