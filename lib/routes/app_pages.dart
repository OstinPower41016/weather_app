
import 'package:get/get.dart';
import 'package:weather_app/pages/home/bindings/home_binding.dart';
import 'package:weather_app/pages/home/presentation/views/home_view.dart';

part "app_routes.dart";

class AppPages {

  static final routes = [
    GetPage(name: Routes.INITIAL, page: () => HomeView(), binding: HomeBinding())
  ];
}