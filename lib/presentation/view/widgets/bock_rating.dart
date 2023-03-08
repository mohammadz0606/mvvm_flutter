import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../core/custom_styles.dart';

class BockRating extends StatelessWidget {
  const BockRating({
    Key? key,
    this.mainAxisAlignment = MainAxisAlignment.start,
    required this.rating,
    required this.count,
  }) : super(key: key);
  final MainAxisAlignment mainAxisAlignment;
  final int rating;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          size: 20,
          color: Color(0xffffdd4f),
        ),
        SizedBox(width: 6.3.w),
        Text(
          rating.toString(),
          style: CustomStyles.textStyle16,
        ),
        SizedBox(width: 4.w),
        Opacity(
          opacity: 0.7,
          child: Text(
            "($count)",
            style: CustomStyles.textStyle14.copyWith(
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
