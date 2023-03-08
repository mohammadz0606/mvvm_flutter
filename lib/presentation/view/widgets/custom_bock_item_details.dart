import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mvvm/data/models/bock_model.dart';
import 'package:mvvm/presentation/view/widgets/custom_bock_item.dart';

import '../../../core/constant.dart';
import '../../../core/custom_styles.dart';
import '../details_screen.dart';
import 'bock_rating.dart';

class CustomBockItemDetails extends StatelessWidget {
  const CustomBockItemDetails({
    Key? key,
    required this.bock,
  }) : super(key: key);
  final BockModel bock;

  @override
  Widget build(BuildContext context) {
    var noImage =
        "https://cdn-icons-png.flaticon.com/512/190/190738.png?w=740&t=st=1678289581~exp=1678290181~hmac=3cc73a393bd84b0a522e4278b4328e149ca7acd01ccb3851a2d63a43d0c07f45";
    return GestureDetector(
      onTap: () {
        Get.to(
          () => const BockDetailsScreen(),
          transition: Transition.fade,
          duration: kTransitionDuration,
        );
      },
      child: SizedBox(
        height: 110.h,
        child: Row(
          children: [
            SizedBox(width: 20.w),
            CustomListViewItems(
              imageUrl: bock.volumeInfo!.imageLinks?.thumbnail! ?? noImage,
            ),
            SizedBox(width: 17.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    bock.volumeInfo!.title!,
                    style: CustomStyles.textStyle20,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 3.h),
                  Text(
                    bock.volumeInfo!.authors!.first,
                    style: CustomStyles.textStyle14,
                  ),
                  SizedBox(height: 10.h),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Free",
                          style: CustomStyles.textStyle21.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                         BockRating(
                          rating: bock.volumeInfo!.averageRating == null ? 0 : bock.volumeInfo!.averageRating!,
                          count: bock.volumeInfo!.ratingsCount == null ? 0 : bock.volumeInfo!.ratingsCount!,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(width: 15.w),
          ],
        ),
      ),
    );
  }
}
