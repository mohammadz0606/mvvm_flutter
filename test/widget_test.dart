// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mvvm/core/api_service.dart';
import 'package:mvvm/data/models/bock_model.dart';
import 'package:mvvm/data/repository/home_repository_imple.dart';

import 'package:mvvm/main.dart';

void main() {
  HomeRepositoryImpl? getDataAPI;

  setUp(() {
    getDataAPI = HomeRepositoryImpl(ApiService());
  });

  group("Get Trending Bock test", () {
    test("Get Done Trending Bock...", () async {
      final List<BockModel> bookModel = await getDataAPI!.getNewestBock();
      expect(bookModel, isA<List<BockModel>>());
    });

  });

  tearDown(() {
    getDataAPI = null;
  });
}
