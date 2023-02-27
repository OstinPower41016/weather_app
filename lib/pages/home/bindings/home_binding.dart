import 'package:get/get.dart';


import 'package:weather_app/pages/home/data/home_api_provider.dart';
import 'package:weather_app/pages/home/data/home_repository.dart';
import 'package:weather_app/pages/home/presentation/controllers/home_controller.dart';

import '../domain/adapters/repository_adapter.dart';

class HomeBinding extends Binding {
  @override
  List<Bind> dependencies() {
    return [
      Bind.lazyPut<IHomeProvider>(() => HomeProvider()),
      Bind.lazyPut<IHomeRepository>(() => HomeRepository(provider: Get.find())),
      Bind.lazyPut(() => HomeController(homeRepository: Get.find())),
    ];
  }
  
}