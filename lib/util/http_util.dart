import 'package:dio/dio.dart';
import 'package:shop/config/api.dart';

class HttpUtil{
  static Dio dio(){
    BaseOptions options = BaseOptions(
      baseUrl: Api.babaseUrl,
      connectTimeout: 5000,
      receiveTimeout: 3000,
    );
    Dio dio = Dio(options);
    return dio;
  }
}