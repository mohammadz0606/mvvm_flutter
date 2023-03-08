import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/custom_styles.dart';
import '../bock_rating.dart';
import '../custom_bock_item.dart';
import 'bock_action.dart';
import 'custom_app_bar_details.dart';
import 'similar_bock_list_view.dart';

class BockDetailsBody extends StatelessWidget {
  const BockDetailsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const AlwaysScrollableScrollPhysics(),
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              const CustomAppBarDetails(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 77.w, vertical: 12.h),
                child: const CustomListViewItems(imageUrl: "https://io.hsoubcdn.com/images/external/i.suar.me/33ebdfdd3f95ba4877d1e62bb9d74d70.jpeg",),
              ),
              SizedBox(height: 10.h),
              Text(
                "Test Bock 01",
                style: CustomStyles.textStyle30
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 7.h),
              Opacity(
                opacity: 0.75,
                child: Text(
                  "M.Zeion",
                  style: CustomStyles.textStyle20.copyWith(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: 18.h),
              const BockRating(
                mainAxisAlignment: MainAxisAlignment.center,
                rating: 7,
                count: 250,
              ),
              SizedBox(height: 22.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 26.w),
                child: const BockAction(),
              ),
              Expanded(
                child: SizedBox(height: 37.h),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 20.w),
                  child: Text(
                    "You can also like",
                    style: CustomStyles.textStyle14.copyWith(
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(20),
                child: SimilarBockListView(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
