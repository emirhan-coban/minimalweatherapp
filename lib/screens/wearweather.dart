// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:minimalweatherapp/models/weathermodel.dart';
import 'package:minimalweatherapp/services/maincondition.dart';
import 'package:minimalweatherapp/services/weatheralerts.dart';
import 'package:minimalweatherapp/services/weatherservice.dart';
import 'package:lottie/lottie.dart';

class WearWeather extends StatefulWidget {
  const WearWeather({super.key});

  @override
  State<WearWeather> createState() => _WearWeatherState();
}

class _WearWeatherState extends State<WearWeather> {
  final _weatherService = WeatherService("5ceb8ca4b4344d769fc140307242104");
  Weather? _weather;
  // fetch weather
  _fetchWeather() async {
    // get the current city
    String cityName = await _weatherService.getCurrentCity();
    // get weather for the current city
    try {
      final weather = await _weatherService.getWeather(cityName);
      setState(() {
        _weather = weather;
      });
    } catch (e) {
      throw Exception("Loading");
    }
  }

  // weather animations başka dosyaya taşındı.

  @override
  void initState() {
    super.initState();
    _fetchWeather();
  }

  @override
  Widget build(BuildContext context) {
    if (_weather == null) {
      return const Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(
                backgroundColor: Colors.purple,
                color: Colors.black,
              ),
              SizedBox(height: 15),
              Text(
                "Sana özel önerilerimizi hazırlıyoruz...",
                textAlign: TextAlign.center,
                style: TextStyle(fontFamily: "Poppins", fontSize: 25),
              ),
            ],
          ),
        ),
      );
    } else {
      return Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: const Text(
            'Sana Özel Önerilerimiz',
            style:
                TextStyle(fontFamily: "Poppins", fontWeight: FontWeight.bold),
          ),
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(
                    top: 40, right: 20, left: 20, bottom: 40),
                padding: const EdgeInsets.only(
                    top: 15, bottom: 15, left: 15, right: 15),
                width: 1000,
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 1.0),
                        blurRadius: 6.0),
                  ],
                  gradient: const LinearGradient(colors: [
                    Color.fromARGB(255, 255, 255, 255),
                    Color.fromARGB(255, 200, 200, 200),
                  ], begin: Alignment.topRight, end: Alignment.bottomLeft),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  'Bugün hava ortalama ${_weather?.avgTemperature.round()} derece ve "${getMainCondition(_weather?.mainCondition, _weather?.dayornight)}"',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 23,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 20, left: 20, bottom: 0),
                padding: const EdgeInsets.only(
                    top: 0, bottom: 30, left: 15, right: 15),
                width: 500,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 174, 201, 216),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 1.0),
                        blurRadius: 6.0),
                  ],
                ),
                child: Column(
                  children: [
                    Lottie.asset(
                      'assets/gifs/deneme2.json',
                      height: 200,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "${clothesAlert(_weather?.avgTemperature)}",
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 22,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                    top: 40, right: 20, left: 20, bottom: 0),
                padding: const EdgeInsets.only(
                    top: 5, bottom: 15, left: 15, right: 15),
                width: 1000,
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 1.0),
                        blurRadius: 6.0),
                  ],
                  gradient: const LinearGradient(colors: [
                    Color.fromARGB(255, 255, 255, 255),
                    Color.fromARGB(255, 200, 200, 200),
                  ], begin: Alignment.topRight, end: Alignment.bottomLeft),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    const Text(
                      "Bugün Yağış Var Mı?",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 25,
                      ),
                    ),
                    const Divider(
                      color: Color.fromARGB(255, 0, 0, 0),
                      thickness: 1,
                    ),
                    Text(
                      rainAlert(_weather?.rainChance),
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }
  }
}
