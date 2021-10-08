import 'package:dio/dio.dart';

class CovidStaticsRepository {
  late var _dio;
  CovidStaticsRepository(){
    _dio = Dio(
      BaseOptions(baseUrl: "http://openapi.data.go.kr/", queryParameters: {serviceKey : ''})
    )
  }
}
