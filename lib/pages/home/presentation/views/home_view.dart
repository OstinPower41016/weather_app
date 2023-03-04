
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              controller.obx((state) {
                if (state?.name != null) {
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            "${state?.name} ${state?.main?.temp} ${state?.weather?[0].description}"
                            )
                        ],
                      ),
                    ),
                  );
                } else {
                  return const SizedBox();
                }
              }, onLoading: const SizedBox()),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "Enter a city"
                ),
                onChanged: (value) => controller.setSearchCityText(value),
              )
            ],
          ),
        ),
      )
    );
  }

}