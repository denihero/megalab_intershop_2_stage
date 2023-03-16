import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:megacom_second_stage/features/our_news/data/datasources/our_news_datasources.dart';
import 'package:megacom_second_stage/features/our_news/data/model/our_news_model.dart';

import '../../domain/repositories/our_news_repositories.dart';

class OurNewsRepositoriesImpl extends OurNewsRepositories {
  OurNewsRepositoriesImpl(this.ourNewsDataSources);

  final OurNewsDataSources ourNewsDataSources;

  @override
  Future<Either<DioErrorType, OurNewsModel>> getAllNews() async {
    try {
      final ourGateType = await ourNewsDataSources.getAllNews();
      return Right(ourGateType);
    } on DioErrorType {
      return const Left(DioErrorType.badResponse);
    }
  }
}
