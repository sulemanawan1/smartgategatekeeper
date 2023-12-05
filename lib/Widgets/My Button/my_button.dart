import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Constants/constants.dart';

class MyButton extends GetView {
  final OutlinedBorder? outlinedBorder;
  final double? height;
  final double? width;
  final bool loading;
  final double? elevation;
  final double? fontSize;
  final double? letterSpacing;
  final FontWeight? fontWeight;
  final double? border;
  final String name;
  final Color? color;
  final FontStyle? fontStyle;
  final Color? textColor;
  final int? maxLines;
  final void Function()? onPressed;

  const MyButton(
      {super.key,
      this.outlinedBorder,
      this.loading = false,
      this.fontStyle,
      this.elevation,
      this.fontWeight,
      this.letterSpacing,
      this.fontSize,
      this.textColor,
      this.height,
      this.width,
      this.border,
      required this.name,
      this.color,
      this.maxLines,
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 343.w,
      height: height ?? 48.w,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            elevation: elevation ?? 5,
            shape: outlinedBorder ??
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(border ?? 12.r)),
            backgroundColor: color ?? primaryColor),
        child: loading
            ? CircularProgressIndicator(
                color: Colors.white,
              )
            : Text(name,
                maxLines: maxLines ?? 1,
                style: GoogleFonts.ubuntu(
                    color: textColor ?? Colors.white,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1,
                    fontStyle: fontStyle,
                    fontSize: 15.sp),
                textAlign: TextAlign.center),
        onPressed: onPressed,
      ),
    );
  }
}
