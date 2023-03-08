import 'package:flutter/material.dart';
import 'package:mvvm/core/errors/failure.dart';

import '../../data/models/bock_model.dart';
import '../../data/repository/home_repository.dart';

class FetchNewestBockProvider extends ChangeNotifier {
  final HomeRepository homeRepository;

  bool _isLoading = false;

  FetchNewestBockProvider(this.homeRepository);

  bool get isLoading => _isLoading;

  List<BockModel> bocks = [];

  Future<void> fetchNewestBock() async {
    _isLoading = true;
    notifyListeners();
    var result = await homeRepository.fetchNewestBock();

    result.fold((failure) {
      _isLoading = false;
      ServerFailure(failure.errorMessage);
      notifyListeners();
    }, (listOfBocks) {
      bocks = listOfBocks;
      _isLoading = false;
      notifyListeners();
    });
  }
}
