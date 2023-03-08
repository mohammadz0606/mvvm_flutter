import 'dart:io';

abstract class Failure {
  final String errorMessage;

  const Failure(this.errorMessage);
}

class ServerFailure extends Failure {
  const ServerFailure(super.errorMessage);

  factory ServerFailure.failureHttpException(HttpException httpException){
    return ServerFailure(httpException.message);
  }
}
