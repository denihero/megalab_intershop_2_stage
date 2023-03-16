import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:megacom_second_stage/features/news_detail/data/model/news_detail_model.dart';
import 'package:megacom_second_stage/features/news_detail/domain/repositories/detail_news_repositories.dart';

class DetailNews {
  DetailNews(this.detailNewsRepositories);

  final DetailNewsRepositories detailNewsRepositories;

  Future<Either<DioErrorType, OurNewsDetailModel>> getDetailNews(int id) async {
    return await detailNewsRepositories.getDetailNews(id);
  }
}
