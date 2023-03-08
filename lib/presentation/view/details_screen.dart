import 'package:flutter/material.dart';

import 'widgets/details/bock_details_body.dart';

class BockDetailsScreen extends StatelessWidget {
  const BockDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: BockDetailsBody(),),
    );
  }
}
