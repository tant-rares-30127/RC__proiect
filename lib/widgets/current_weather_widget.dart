import 'package:flutter/material.dart';
import 'package:weatherapp_starter_project/model/utils/custom_colors.dart';
import 'package:weatherapp_starter_project/model/weather_data_current.dart';

class CurrentWeatherWidget extends StatelessWidget {
  final WeatherDataCurrent weatherDataCurrent;

  const CurrentWeatherWidget({Key? key, required this.weatherDataCurrent})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //tempeture area
        tempeatureAreaWidget(),
        //more details -  windspeed, humidity, clouds
        curentWeatherMoreDetailsWidget(),
      ],
    );
  }

  Widget curentWeatherMoreDetailsWidget() {
    return Container();
  }

  Widget tempeatureAreaWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image.asset(
          "assets/weather/${weatherDataCurrent.current.weather![0].icon}.png",
          height: 80,
          width: 80,
        ),
        Container(
          height: 50,
          width: 1,
          color: CustomColors.dividerLine,
        ),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                  text: "${weatherDataCurrent.current.temp!.toInt()}",
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 68,
                    color: CustomColors.textColorBlack,
                  )),
            ],
          ),
        )
      ],
    );
  }
}
