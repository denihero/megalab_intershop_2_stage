import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:megacom_second_stage/features/news_detail/data/model/news_detail_model.dart';

abstract class DetailNewsRepositories{
  Future<Either<DioErrorType, OurNewsDetailModel>> getDetailNews(int id);
}