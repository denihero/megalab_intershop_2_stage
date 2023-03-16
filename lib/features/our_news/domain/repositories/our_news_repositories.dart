import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:megacom_second_stage/features/our_news/data/model/our_news_model.dart';

abstract class OurNewsRepositories{
  Future<Either<DioErrorType, OurNewsModel>> getAllNews();
}