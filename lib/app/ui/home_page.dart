import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:weather_app/app/controller/home_controller.dart';


class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: const Text("Weather app"), centerTitle: true),
      body: Center(
        child: Text("Home page"),
      ),
    );
  }
}