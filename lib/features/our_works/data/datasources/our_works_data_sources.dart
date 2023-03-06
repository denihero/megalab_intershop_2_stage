import 'package:megacom_second_stage/core/network/dio_settings.dart';
import 'package:megacom_second_stage/features/our_works/data/model/our_works_model.dart';

abstract class OurWorksDataSources{
  Future<OurWorksModel> getOurWorks();
}

class OurWorksDataSourcesImpl extends OurWorksDataSources{

  final DioSetting client;

  OurWorksDataSourcesImpl({required this.client});

  @override
  Future<OurWorksModel> getOurWorks() {
    throw Exception();
  }

}