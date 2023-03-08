import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../../../core/assets.dart';
import '../../../../core/constant.dart';
import '../../search_screen.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 13.w,vertical: 5.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            AssetsData.logo,
            height: 21.h,
          ),
          IconButton(
            onPressed: () {
              Get.to(
                    () => const SearchScreen(),
                transition: Transition.fade,
                duration: kTransitionDuration,
              );
            },
            icon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 21.5,
            ),
          ),
        ],
      ),
    );
  }
}
