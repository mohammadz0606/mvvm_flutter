import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../custom_bock_item_details.dart';

class SearchResult extends StatelessWidget {
  const SearchResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.only(bottom: 20.h),
      physics: const AlwaysScrollableScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) {
        //return  CustomBockItemDetails(bock: ,);
        return Container();
      },
      separatorBuilder: (context, index) {
        return SizedBox(height: 15.h);
      },
    );
  }
}