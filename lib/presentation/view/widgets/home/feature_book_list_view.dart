import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../view_model/feature_bock_provider.dart';
import '../custom_bock_item.dart';
import '../progress_indicator.dart';

class FeatureBookListView extends StatelessWidget {
  const FeatureBookListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var noImage =
        "https://cdn-icons-png.flaticon.com/512/190/190738.png?w=740&t=st=1678289581~exp=1678290181~hmac=3cc73a393bd84b0a522e4278b4328e149ca7acd01ccb3851a2d63a43d0c07f45";
    return SizedBox(
      height: 200.h,
      child: Consumer<FeatureBockProvider>(
        builder: (context, provider, child) {
          return Visibility(
            visible: !provider.isLoading,
            replacement: const CustomProgressIndicator(),
            child: Padding(
              padding:
                  const EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                physics: const AlwaysScrollableScrollPhysics(),
                itemCount: provider.bocks.length,
                itemBuilder: (context, index) {
                  var bock = provider.bocks[index];
                  return CustomListViewItems(
                    imageUrl: bock.volumeInfo!.imageLinks?.thumbnail??noImage,
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(width: 7.w);
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
