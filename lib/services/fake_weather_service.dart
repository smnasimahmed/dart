import 'package:advanced_classes/services/weather_service.dart';

class FakeWeatherService implements WeatherService {
  @override
  Future<double> getTemperature(String city) async {
    await Future.delayed(Duration(seconds: 1));
    return 36.6;
  }
}

class RealWeatherService implements WeatherService {
  @override
  Future<double> getTemperature(String city) async {
    await Future.delayed(Duration(seconds: 1));
    return 30.3;
  }
}
