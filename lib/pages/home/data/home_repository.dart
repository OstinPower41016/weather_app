import 'package:get/get.dart';
import 'package:weather_app/pages/home/domain/adapters/repository_adapter.dart';
import 'package:weather_app/pages/home/domain/entity/weather_model.dart';

import 'home_api_provider.dart';

class HomeRepository implements IHomeRepository {
  HomeRepository({required this.provider});
  final IHomeProvider provider;

  @override
  final searchCityText = "".obs;

  @override
  Future<WeatherModel> getWeather() async {
    final res = await provider.getWeather(searchCityText.value);
    return res.body!;
  }

  @override
  void setSearchCityText(String newSearchCityText) async {
    searchCityText.value = newSearchCityText;
  }
}