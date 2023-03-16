import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:megacom_second_stage/features/our_news/data/model/our_news_model.dart';
import 'package:megacom_second_stage/features/our_news/domain/repositories/our_news_repositories.dart';

class OurNews {
  OurNews(this.ourNewsRepositories);

  final OurNewsRepositories ourNewsRepositories;

  Future<Either<DioErrorType, OurNewsModel>> getAllNews() async {
    return await ourNewsRepositories.getAllNews();
  }
}
