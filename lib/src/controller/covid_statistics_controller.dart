import 'package:corona/src/repository/covid_statistics_repository.dart';
import 'package:get/get.dart';

class CovidStatisticsController extends GetxController {
  late CovidStatisticsRepository _covidStatisticsRepository;

  @override
  void onInit() {
    super.onInit();
    _covidStatisticsRepository = CovidStatisticsRepository();
    fetchCovidState();
  }

  void fetchCovidState() {
    _covidStatisticsRepository.fetchCovid19Statistics();
  }
}
