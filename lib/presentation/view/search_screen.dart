import 'package:flutter/material.dart';

import 'widgets/search/search_body.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SearchBody(),
      ),
    );
  }
}
