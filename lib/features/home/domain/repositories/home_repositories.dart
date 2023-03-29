import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:megacom_second_stage/features/home/data/model/review_model.dart';

abstract class HomeRepositories{
  Future<Either<DioErrorType, bool>> sendApplication(String name,String phoneNumber,String message);
  Future<Either<DioErrorType, List<ReviewModel>>> getUserFeedback();
}