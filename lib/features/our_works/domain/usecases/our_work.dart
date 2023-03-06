import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:megacom_second_stage/features/our_works/data/model/our_works_model.dart';
import 'package:megacom_second_stage/features/our_works/domain/repositories/our_work_repositories.dart';

class OurWork {
  OurWork(this.ourWorkRepositories);

  final OurWorkRepositories ourWorkRepositories;

  Future<Either<DioErrorType, OurWorksModel>> getAllPost() async {
    return await ourWorkRepositories.getOurWorks();
  }
}
