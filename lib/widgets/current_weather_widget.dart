import 'package:flutter/material.dart';
import 'package:weatherapp_starter_project/model/weather_data_current.dart';

class CurrentWeatherWidget extends StatelessWidget {
  final WeatherDataCurrent weatherDataCurrent;

  const CurrentWeatherWidget({Key? key, required this.weatherDataCurrent})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('${weatherDataCurrent.current.weather![0].description}'),
    );
  }
}
