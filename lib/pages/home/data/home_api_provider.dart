import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:weather_app/pages/home/domain/entity/weather_model.dart';

abstract class IHomeProvider {
  Future<Response<WeatherModel>> getWeather(String searhCityText, {String? path});
}

class HomeProvider extends GetConnect implements IHomeProvider {

  @override
  void onInit() {
    httpClient.baseUrl = dotenv.env["API_URL"];
    httpClient.defaultDecoder = (json) {
      return WeatherModel.fromJson(json);
    };
    super.onInit();
  }


  @override
  Future<Response<WeatherModel>> getWeather(String searhCityText, {String? path}) async {
    var res = 
      await (
        path != null 
        ? get<WeatherModel>("$path&q=$searhCityText") 
        : get<WeatherModel>("&q=$searhCityText")
      );
      
    return res;
  }
  
}
