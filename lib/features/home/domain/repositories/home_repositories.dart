import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

abstract class HomeRepositories{
  Future<Either<DioErrorType, bool>> sendApplication(String name,String phoneNumber,String message);
}