import 'dart:io';

import 'package:dartz/dartz.dart';

import '../../core/api_service.dart';
import '../../core/errors/failure.dart';
import '../models/bock_model.dart';
import 'home_repository.dart';

class HomeRepositoryImpl implements HomeRepository {
  final ApiService _apiService;

  const HomeRepositoryImpl(this._apiService);

  @override
  Future<Either<Failure, List<BockModel>>> fetchNewestBock() async {
    List<BockModel> bocks = [];
    try {
      final Map<String, dynamic> data = await _apiService.getResponse(
        endPoint:
            "volumes?Filtering=free-ebooks&Sorting=newest &q=subject:programming",
      );
      for (var item in data["items"]) {
        bocks.add(BockModel.fromJson(item));
      }
      return right(bocks);
    } catch (e) {
      if (e is HttpException) {
        return left(ServerFailure.failureHttpException(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }

  Future<List<BockModel>> getNewestBock() async{
    List<BockModel> bocks = [];
    try {
      final Map<String, dynamic> data = await _apiService.getResponse(
        endPoint:
        "volumes?Filtering=free-ebooks&Sorting=newest &q=subject:programming",
      );
      for (var item in data["items"]) {
        bocks.add(BockModel.fromJson(item));
      }
      return bocks;
    } catch (e) {
      if (e is HttpException) {
        throw Exception(e.toString());
      } else {
        throw Exception(e.toString());
      }
    }
  }

  @override
  Future<Either<Failure, List<BockModel>>> fetchFeatureBock() async {
    List<BockModel> bocks = [];
    try {
      final Map<String, dynamic> data = await _apiService.getResponse(
        endPoint:
        "volumes?Filtering=free-ebooks&q=subject:Programming",
      );
      for (var item in data["items"]) {
        bocks.add(BockModel.fromJson(item));
      }
      return right(bocks);
    } catch (e) {
      if (e is HttpException) {
        return left(ServerFailure.failureHttpException(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }
}
