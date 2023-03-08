import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../custom_bock_item.dart';

class SimilarBockListView extends StatelessWidget {
  const SimilarBockListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.h,
      child: ListView.separated(
        //shrinkWrap: true,
        physics: const AlwaysScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const CustomListViewItems(imageUrl: "https://io.hsoubcdn.com/images/external/i.suar.me/33ebdfdd3f95ba4877d1e62bb9d74d70.jpeg",);
        },
        separatorBuilder: (context, index) {
          return SizedBox(width: 10.w);
        },
      ),
    );
  }
}