import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:megacom_second_stage/features/our_service/data/model/our_service_model.dart';
import 'package:megacom_second_stage/features/our_service/domain/repositories/our_service_repositories.dart';

class OurService{
  OurService(this.ourServiceRepositories);

  final OurServiceRepositories ourServiceRepositories;

  Future<Either<DioErrorType, List<OurServiceModel>>> getAllPost() async {
    return await ourServiceRepositories.getGateType();
  }
}