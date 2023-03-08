import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.backgroundColor,
    required this.text,
    this.borderRadius,
    required this.textStyle,
  }) : super(key: key);
  final Color backgroundColor;
  final String text;
  final BorderRadius? borderRadius;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.h,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(20.r),
          ),
        ),
        onPressed: () {},
        child: Text(
          text,
          style:textStyle,
        ),
      ),
    );
  }
}
