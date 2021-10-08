import 'package:dio/dio.dart';

class CovidStatisticsRepository {
  late var _dio;
  CovidStatisticsRepository() {
    _dio = Dio(
      BaseOptions(
        baseUrl: "http://openapi.data.go.kr/",
        queryParameters: {
          'serviceKey':
              'd7qwhad8e1C7E4WXQamvO/JxElQxzvPbyiq/xZ/ovqIb0IFMcxfUYKd5Ew30riPyda3MoaOTaOs4ZDqYkvdiGw=='
        },
      ),
    );
  }

  fetchCovid19Statistics() async {
    var response =
        await _dio.get('/openapi/service/rest/Covid19/getCovid19InfStateJson');
  }
}
