import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:weather_app/app/data/provider/weather_api.dart';
import 'package:weather_app/app/data/repository/weather_repository.dart';

import '../controller/home_controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() {
      return HomeController(
        weatherRepo: WeatherRepository(apiWeather: WeatherAPI())
      );
    });
  }
}
