import 'package:flutter/material.dart';
import 'package:mvvm/core/errors/failure.dart';

import '../../data/models/bock_model.dart';
import '../../data/repository/home_repository.dart';

class FeatureBockProvider extends ChangeNotifier {
  final HomeRepository homeRepository;

  bool _isLoading = false;

  FeatureBockProvider(this.homeRepository);

  bool get isLoading => _isLoading;

  List<BockModel> bocks = [];

  Future<void> fetchFeatureBock() async {
    _isLoading = true;
    notifyListeners();
    var result = await homeRepository.fetchFeatureBock();

    result.fold((failure) {
      _isLoading = false;
      ServerFailure(failure.errorMessage);
      print("my errors is a = = = ${failure.errorMessage}");
      notifyListeners();
    }, (listOfBocks) {
      bocks = listOfBocks;
      print("My leeeennee is ${bocks.length}");
      _isLoading = false;
      notifyListeners();
    });
  }
}
