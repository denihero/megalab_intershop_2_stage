import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:megacom_second_stage/features/home/data/datasource/home_datasources.dart';
import 'package:megacom_second_stage/features/home/data/model/review_model.dart';

import '../../domain/repositories/home_repositories.dart';


class HomeRepositoriesImpl extends HomeRepositories {
  HomeRepositoriesImpl(this.homeDataSources);

  final HomeDataSources homeDataSources;

  @override
  Future<Either<String, bool>> sendApplication(String name,String phoneNumber,String message) async{
    try {
      final detailNews = await homeDataSources.sendApplication(name,phoneNumber,message);
      return Right(detailNews);
    } on DioErrorType {
      return Left(DioErrorType.badResponse.name);
    }
  }

  @override
  Future<Either<DioErrorType, List<ReviewModel>>> getUserFeedback() async{
    try {
      final detailNews = await homeDataSources.getUserFeedback();
      return Right(detailNews);
    } on DioErrorType {
      return const Left(DioErrorType.badResponse);
    }
  }

}
