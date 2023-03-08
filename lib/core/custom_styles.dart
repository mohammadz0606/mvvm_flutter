import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class CustomStyles {
  static TextStyle textStyle21 = TextStyle(
    fontSize: 21.sp,
    fontWeight: FontWeight.w600,
  );
  static TextStyle textStyle20 = GoogleFonts.notoSerif(
    fontSize: 20.sp,
    fontWeight: FontWeight.normal,
  );

  //Google font
  static TextStyle textStyle30 = GoogleFonts.notoSerif(
    fontSize: 30.sp,
    fontWeight: FontWeight.w900,
    letterSpacing: 1.2,
  );

  static TextStyle textStyle14 = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.normal,
  );

  static TextStyle textStyle16 = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
  );
}
