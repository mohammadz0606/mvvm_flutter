import 'package:dartz/dartz.dart';

import '../../core/errors/failure.dart';
import '../models/bock_model.dart';

mixin HomeRepository {
  Future<Either<Failure, List<BockModel>>> fetchNewestBock();

  Future<Either<Failure, List<BockModel>>> fetchFeatureBock();
}
