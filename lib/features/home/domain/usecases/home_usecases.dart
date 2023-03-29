import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:megacom_second_stage/features/home/data/model/review_model.dart';
import 'package:megacom_second_stage/features/home/domain/repositories/home_repositories.dart';


class HomeUseCases {
  HomeUseCases(this.homeRepositories);

  final HomeRepositories homeRepositories;

  Future<Either<DioErrorType, bool>> sendApplication(
      String name, String phoneNumber, String message) async {
    return await homeRepositories.sendApplication(name, phoneNumber, message);
  }

  Future<Either<DioErrorType, List<ReviewModel>>> getUserFeedback() async {
    return await homeRepositories.getUserFeedback();
  }
}
