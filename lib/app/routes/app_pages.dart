import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:weather_app/app/bindings/home_binding.dart';
import 'package:weather_app/app/ui/home_page.dart';

part './app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: Routes.INITIAL, page: () => HomePage(), binding: HomeBinding()
    )
  ];
}