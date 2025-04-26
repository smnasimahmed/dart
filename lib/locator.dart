// This is file only for GET_X tool

import 'package:advanced_classes/services/fake_weather_service.dart';
import 'package:advanced_classes/services/weather_service.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupLocator({bool useFake = true}) {
  if (useFake == false) {
    getIt.registerLazySingleton<WeatherService>(() => RealWeatherService());
  } else {
    getIt.registerLazySingleton<WeatherService>(() => FakeWeatherService());
  }
}
