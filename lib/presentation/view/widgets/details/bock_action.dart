import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/custom_styles.dart';
import '../custom_button.dart';

class BockAction extends StatelessWidget {
  const BockAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: CustomButton(
            text: "20.99 \$",
            textStyle: CustomStyles.textStyle20.copyWith(
              color: Colors.black,
              fontWeight: FontWeight.w900,
            ),
            backgroundColor: const Color(0xffffffff),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.r),
              bottomLeft: Radius.circular(20.r),
            ),
          ),
        ),
        Expanded(
          child: CustomButton(
            text: "Free Preview",
            textStyle: CustomStyles.textStyle20.copyWith(
              color: const Color(0xffffffff),
              fontSize: 18.sp,
            ),
            backgroundColor: const Color(0xffef8262),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20.r),
              bottomRight: Radius.circular(20.r),
            ),
          ),
        ),
      ],
    );
  }
}