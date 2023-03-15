import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:megacom_second_stage/features/our_service/data/model/our_service_model.dart';

abstract class OurServiceRepositories{
  Future<Either<DioErrorType,List<OurServiceModel>>> getGateType();
}