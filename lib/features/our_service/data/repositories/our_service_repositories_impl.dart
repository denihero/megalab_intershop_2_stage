import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:megacom_second_stage/features/our_service/data/datasources/our_service_datasources.dart';
import 'package:megacom_second_stage/features/our_service/data/model/our_service_model.dart';

import '../../domain/repositories/our_service_repositories.dart';

class OurServiceRepositoriesImpl extends OurServiceRepositories{
  OurServiceRepositoriesImpl(this.ourServiceDataSources);

  final OurServiceDataSources ourServiceDataSources;

  @override
  Future<Either<DioErrorType, List<OurServiceModel>>> getGateType() async{
    try {
      final ourGateType = await ourServiceDataSources.getGateType();
      return Right(ourGateType);
    }on DioErrorType {
      return const Left(DioErrorType.badResponse);
    }
  }

}