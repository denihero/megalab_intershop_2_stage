import 'package:dartz/dartz.dart';
import 'package:dio/src/dio_error.dart';
import 'package:megacom_second_stage/features/our_works/data/datasources/our_works_data_sources.dart';
import 'package:megacom_second_stage/features/our_works/data/model/our_works_model.dart';
import 'package:megacom_second_stage/features/our_works/domain/repositories/our_work_repositories.dart';

class OurWorkRepositoriesImpl extends OurWorkRepositories{
  OurWorkRepositoriesImpl({required this.ourWorksDataSourcesImpl});

  final OurWorksDataSourcesImpl ourWorksDataSourcesImpl;

  @override
  Future<Either<DioErrorType, OurWorksModel>> getOurWorks() async{
    try {
      final getOurWorks = await ourWorksDataSourcesImpl.getOurWorks();
      return Right(getOurWorks);
    } on DioErrorType {
      return const Left(DioErrorType.badResponse);
    }
  }
}