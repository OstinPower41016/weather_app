import 'package:get/get.dart';
import 'package:weather_app/app/data/repository/weather_repository.dart';


class HomeController extends GetxController {
  String currentWeather = "";
  String searchInputOfCity = "";
  final WeatherRepository weatherRepo;

  HomeController({required this.weatherRepo});


  void setSearchInputOfCity(String value) {
    searchInputOfCity = value;
    _getCurrentWeather();
  }

  void _getCurrentWeather() {

  }

}