import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:weather_app/pages/home/domain/entity/weather_model.dart';

abstract class IHomeRepository {
  late Rx<WeatherModel?> weather;
  Future setSearchCityText(String newSearchCityText);
}