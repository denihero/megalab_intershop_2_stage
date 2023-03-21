import 'package:dio/dio.dart';
import 'package:megacom_second_stage/core/network/dio_settings.dart';

abstract class HomeDataSources{
  Future<bool> sendApplication(String name, String phoneNumber, String message);
  Future<bool> getUserFeedback();
}

class HomeDataSourcesImpl extends HomeDataSources{
  HomeDataSourcesImpl({required this.client});
  
  final DioSetting client;
  
  @override
  Future<bool> sendApplication(String name, String phoneNumber, String message) async{
    final response = await client.postFixed('/orders',
        data:{
          'customerName': name,
          'customerPhone': phoneNumber,
          'message': message,
        });
    if(response.statusCode! >= 200){
        return true;
    }else{
      throw DioErrorType.badResponse;
    }
  }

  @override
  Future<bool> getUserFeedback() {
    // TODO: implement getUserFeedback
    throw UnimplementedError();
  }
  
}