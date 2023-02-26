
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/app/data/provider/weather_api.dart';

class WeatherRepository {
  final WeatherAPI apiWeather;

  WeatherRepository({required this.apiWeather});
}