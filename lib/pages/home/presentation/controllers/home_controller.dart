import "package:get/get.dart";

import "package:weather_app/pages/home/domain/entity/weather_model.dart";

import "../../domain/adapters/repository_adapter.dart";

class HomeController extends StateController {
    final IHomeRepository homeRepository;
    HomeController({required this.homeRepository});

    WeatherModel? getWheather()  {
      return homeRepository.weather.value;
    }
}