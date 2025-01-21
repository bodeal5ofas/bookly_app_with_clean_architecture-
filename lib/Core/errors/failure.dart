import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  Failure({required this.errMessage});
}

class ServerFailure extends Failure {
  ServerFailure({required super.errMessage});

  factory ServerFailure.fromDioError(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(errMessage: 'Connection timeout with Api Server');
      case DioExceptionType.sendTimeout:
        return ServerFailure(errMessage: 'Send timeout with Api Server');
      case DioExceptionType.receiveTimeout:
        return ServerFailure(errMessage: 'Receive timeout with Api Server');
      case DioExceptionType.badCertificate:
        return ServerFailure(
            errMessage: 'badCertificate timeout with Api Server');
      case DioExceptionType.badResponse:
      return  ServerFailure.fromResponse(e.response!.statusCode!, e.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure(errMessage: 'Request to Api was Canceled');
      case DioExceptionType.connectionError:
        return ServerFailure(errMessage: 'No internet Connection');
      case DioExceptionType.unknown:
        return ServerFailure(
            errMessage: 'Opps,There is an error ,please try again');
      
    }
  }
  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 404) {
      return ServerFailure(
          errMessage: 'The request is not found, please try later');
    } else if (statusCode == 500) {
      return ServerFailure(
          errMessage: 'There is problem with server, please try later');
    } else if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(errMessage: response['error']['message']);
    } else {
      return ServerFailure(errMessage: 'There is an error, please try again');
    }
  }
}
