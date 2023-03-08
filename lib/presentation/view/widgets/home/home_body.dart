import 'package:flutter/material.dart';

import '../../../../core/custom_styles.dart';
import 'custom_app_bar.dart';
import 'feature_best_seller_list_view.dart';
import 'feature_book_list_view.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const AlwaysScrollableScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppBar(),
              const FeatureBookListView(),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  "Newest Seller",
                  style: CustomStyles.textStyle21,
                ),
              ),
            ],
          ),
        ),
        const SliverToBoxAdapter(
          child:  FeatureBestSellerListView(),
        ),
      ],
    );
  }
}


