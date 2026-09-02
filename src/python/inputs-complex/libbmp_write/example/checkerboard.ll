; ModuleID = 'checkerboard.c'
source_filename = "checkerboard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._bmp_img = type { %struct._bmp_header, %struct._bmp_pixel** }
%struct._bmp_header = type { i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct._bmp_pixel = type { i8, i8, i8 }

@.str = private unnamed_addr constant [9 x i8] c"test.bmp\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct._bmp_img, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  call void @bmp_img_init_df(%struct._bmp_img* noundef %6, i32 noundef 512, i32 noundef 512)
  store i64 0, i64* %7, align 8
  br label %9

9:                                                ; preds = %53, %2
  %10 = load i64, i64* %7, align 8
  %11 = icmp ult i64 %10, 512
  br i1 %11, label %12, label %56

12:                                               ; preds = %9
  store i64 0, i64* %8, align 8
  br label %13

13:                                               ; preds = %49, %12
  %14 = load i64, i64* %8, align 8
  %15 = icmp ult i64 %14, 512
  br i1 %15, label %16, label %52

16:                                               ; preds = %13
  %17 = load i64, i64* %7, align 8
  %18 = urem i64 %17, 128
  %19 = icmp ult i64 %18, 64
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load i64, i64* %8, align 8
  %22 = urem i64 %21, 128
  %23 = icmp ult i64 %22, 64
  br i1 %23, label %32, label %24

24:                                               ; preds = %20, %16
  %25 = load i64, i64* %7, align 8
  %26 = urem i64 %25, 128
  %27 = icmp uge i64 %26, 64
  br i1 %27, label %28, label %40

28:                                               ; preds = %24
  %29 = load i64, i64* %8, align 8
  %30 = urem i64 %29, 128
  %31 = icmp uge i64 %30, 64
  br i1 %31, label %32, label %40

32:                                               ; preds = %28, %20
  %33 = getelementptr inbounds %struct._bmp_img, %struct._bmp_img* %6, i32 0, i32 1
  %34 = load %struct._bmp_pixel**, %struct._bmp_pixel*** %33, align 8
  %35 = load i64, i64* %7, align 8
  %36 = getelementptr inbounds %struct._bmp_pixel*, %struct._bmp_pixel** %34, i64 %35
  %37 = load %struct._bmp_pixel*, %struct._bmp_pixel** %36, align 8
  %38 = load i64, i64* %8, align 8
  %39 = getelementptr inbounds %struct._bmp_pixel, %struct._bmp_pixel* %37, i64 %38
  call void @bmp_pixel_init(%struct._bmp_pixel* noundef %39, i8 noundef zeroext -6, i8 noundef zeroext -6, i8 noundef zeroext -6)
  br label %48

40:                                               ; preds = %28, %24
  %41 = getelementptr inbounds %struct._bmp_img, %struct._bmp_img* %6, i32 0, i32 1
  %42 = load %struct._bmp_pixel**, %struct._bmp_pixel*** %41, align 8
  %43 = load i64, i64* %7, align 8
  %44 = getelementptr inbounds %struct._bmp_pixel*, %struct._bmp_pixel** %42, i64 %43
  %45 = load %struct._bmp_pixel*, %struct._bmp_pixel** %44, align 8
  %46 = load i64, i64* %8, align 8
  %47 = getelementptr inbounds %struct._bmp_pixel, %struct._bmp_pixel* %45, i64 %46
  call void @bmp_pixel_init(%struct._bmp_pixel* noundef %47, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0)
  br label %48

48:                                               ; preds = %40, %32
  br label %49

49:                                               ; preds = %48
  %50 = load i64, i64* %8, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %8, align 8
  br label %13, !llvm.loop !4

52:                                               ; preds = %13
  br label %53

53:                                               ; preds = %52
  %54 = load i64, i64* %7, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %7, align 8
  br label %9, !llvm.loop !6

56:                                               ; preds = %9
  %57 = call i32 @bmp_img_write(%struct._bmp_img* noundef %6, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  call void @bmp_img_free(%struct._bmp_img* noundef %6)
  ret i32 0
}

declare dso_local void @bmp_img_init_df(%struct._bmp_img* noundef, i32 noundef, i32 noundef) #1

declare dso_local void @bmp_pixel_init(%struct._bmp_pixel* noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) #1

declare dso_local i32 @bmp_img_write(%struct._bmp_img* noundef, i8* noundef) #1

declare dso_local void @bmp_img_free(%struct._bmp_img* noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
