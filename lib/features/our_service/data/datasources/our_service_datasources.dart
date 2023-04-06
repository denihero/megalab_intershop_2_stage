import 'package:dio/dio.dart';
import 'package:megacom_second_stage/core/network/dio_settings.dart';
import 'package:megacom_second_stage/features/our_service/data/model/our_service_model.dart';

abstract class OurServiceDataSources {
  Future<List<OurServiceModel>> getGateType();
}

class OurServiceDataSourcesImpl extends OurServiceDataSources {
  OurServiceDataSourcesImpl({required this. client});

  final DioSetting client;

  @override
  Future<List<OurServiceModel>> getGateType() async {

    List<OurServiceModel> ourService = [];
    final response = await client.getFixed('/api/v1/public/gate_category');
    final data = response.data;

    if (response.statusCode! >= 200) {
      for (var item in data) {
        ourService.add(OurServiceModel.fromJson(item));
      }
      return ourService;

    } else if (response.statusCode! >= 400) {
      throw DioErrorType.badResponse;
    }

    return ourService;
  }
}
