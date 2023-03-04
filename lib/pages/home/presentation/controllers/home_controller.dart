import "package:get/get.dart";

import "package:weather_app/pages/home/domain/entity/weather_model.dart";

import "../../domain/adapters/repository_adapter.dart";

class HomeController extends StateController<WeatherModel?> {
  final IHomeRepository homeRepository;
  HomeController({required this.homeRepository});


  @override
  void onInit() {
    debounce(
      homeRepository.searchCityText, 
      (_) => futurize(homeRepository.getWeather), 
      time: const Duration(milliseconds: 500)
    );
    
    super.onInit();
  }

  void setSearchCityText(String searchCity) {
    homeRepository.setSearchCityText(searchCity);
  }

}