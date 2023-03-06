import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:megacom_second_stage/features/our_works/data/model/our_works_model.dart';

abstract class OurWorkRepositories{
  Future<Either<DioErrorType, OurWorksModel>> getOurWorks();
}