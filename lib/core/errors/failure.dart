import 'package:dio/dio.dart';

abstract class Failure {
  String msg;

  Failure(this.msg);
}
// class CacheFailure extends Failure {}
class ServerFailure extends Failure {
  ServerFailure(super.msg);
  factory ServerFailure.fromDioError(DioException e){
    return ServerFailure(e.toString());
  }
}
// class NetworkFailure extends Failure {}
