import 'package:dio/dio.dart';
import 'package:megacom_second_stage/core/network/dio_settings.dart';
import 'package:megacom_second_stage/features/our_works/data/model/our_works_model.dart';

abstract class OurWorksDataSources{
  Future<OurWorksModel> getAllWorks();
}

class OurWorksDataSourcesImpl extends OurWorksDataSources {

  final DioSetting client;

  OurWorksDataSourcesImpl({required this.client});

  @override
  Future<OurWorksModel> getAllWorks() async {
    final response = await client.getFixed('/api/v1/public/projects');
    if (response.statusCode! >= 200) {
      print(response.data);
      return OurWorksModel.fromJson(response.data);
    } else if (response.statusCode! >= 400) {
      throw DioErrorType.badResponse;
    }
    return OurWorksModel.fromJson(response.data);
  }
}

