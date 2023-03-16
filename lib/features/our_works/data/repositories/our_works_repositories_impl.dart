import 'package:dartz/dartz.dart';
import 'package:dio/src/dio_error.dart';
import 'package:megacom_second_stage/features/our_works/data/datasources/our_works_data_sources.dart';
import 'package:megacom_second_stage/features/our_works/data/model/our_works_model.dart';
import 'package:megacom_second_stage/features/our_works/domain/repositories/our_work_repositories.dart';

class OurWorkRepositoriesImpl extends OurWorkRepositories{
  OurWorkRepositoriesImpl(this.ourWorksDataSources);

  final OurWorksDataSources ourWorksDataSources;

  @override
  Future<Either<DioErrorType, OurWorksModel>> getOurWorks() async{
    try {
      final getOurWorks = await ourWorksDataSources.getAllWorks();
      return Right(getOurWorks);
    } on DioErrorType {
      return const Left(DioErrorType.badResponse);
    }
  }
}