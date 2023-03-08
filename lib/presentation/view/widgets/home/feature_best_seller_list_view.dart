import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../view_model/fetch_newest_bock_provider.dart';
import '../custom_bock_item_details.dart';
import '../progress_indicator.dart';

class FeatureBestSellerListView extends StatelessWidget {
  const FeatureBestSellerListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<FetchNewestBockProvider>(
      builder: (context, provider, child) {
        return Visibility(
          visible: !provider.isLoading,
          replacement: const CustomProgressIndicator(),
          child: ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: provider.bocks.length,
            itemBuilder: (context, index) {
              return  Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: CustomBockItemDetails(bock: provider.bocks[index]),
              );
            },
          ),
        );
      },
    );
  }
}
