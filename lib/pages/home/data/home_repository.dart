import 'package:get/get.dart';
import 'package:weather_app/pages/home/domain/adapters/repository_adapter.dart';
import 'package:weather_app/pages/home/domain/entity/weather_model.dart';

import 'home_api_provider.dart';

class HomeRepository implements IHomeRepository {
  HomeRepository({required this.provider});
  final IHomeProvider provider;

  var searchCityText = "";
  @override
  var weather = Rx<WeatherModel?>(null);


  Future<WeatherModel> _getWeather() async {
    var res = await provider.getWeather(searchCityText);

    if (res.status.hasError) {
      return Future.error(res.statusText!);
    } else {
      return res.body!;
    }
  }
  
  @override
  Future setSearchCityText(String newSearchCityText) async {
    searchCityText = newSearchCityText;
    final res = await _getWeather();
    weather.value = res;
  }
}