import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:megacom_second_stage/features/news_detail/data/model/news_detail_model.dart';
import 'package:megacom_second_stage/features/our_news/data/datasources/our_news_datasources.dart';

import '../../domain/repositories/detail_news_repositories.dart';
import '../datasources/news_detail_datarsource.dart';

class DetailNewsRepositoriesImpl extends DetailNewsRepositories {
  DetailNewsRepositoriesImpl(this.ourNewsDataSources);

  final NewsDetailDataSource ourNewsDataSources;

  @override
  Future<Either<DioErrorType, OurNewsDetailModel>> getDetailNews(int id) async{
    try {
      final detailNews = await ourNewsDataSources.getDetailNews(id);
      return Right(detailNews);
    } on DioErrorType {
      return const Left(DioErrorType.badResponse);
    }
  }

}
