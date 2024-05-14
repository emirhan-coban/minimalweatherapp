// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:minimalweatherapp/models/weatherModel.dart';
import 'package:minimalweatherapp/services/maincondition.dart';
import 'package:minimalweatherapp/services/weatherpictures.dart';
import 'package:minimalweatherapp/services/forecast.dart';
import 'package:minimalweatherapp/screens/wearweather.dart';
import 'package:minimalweatherapp/services/weatherservice.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  // api key
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
        _weather = weather as Weather?;
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
                "Hava durumu bilgileri yükleniyor...",
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
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.tips_and_updates_sharp),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const WearWeather()),
              );
            },
          ),
          title: Text(
            sevenDayForecast(_weather?.todayDate) +
                ", " +
                DateFormat("d/M/y").format(DateTime.now()),
            style: const TextStyle(
              color: Colors.black,
              fontFamily: "Poppins",
              fontSize: 21,
            ),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.refresh),
              color: Colors.grey[900],
              onPressed: () {
                _fetchWeather();
              },
            ),
          ],
        ),
        body: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.0, 1.0),
                      blurRadius: 6.0),
                ],
                gradient: const LinearGradient(colors: [
                  Colors.purple,
                  Colors.blue,
                ], begin: Alignment.bottomRight, end: Alignment.topLeft),
                borderRadius: BorderRadius.circular(20),
              ),
              margin: const EdgeInsets.only(
                  top: 5, left: 20, right: 20, bottom: 15),
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      const Text(
                        "KONUMUM",
                        style: TextStyle(
                            height: 0,
                            letterSpacing: 5,
                            color: Colors.white,
                            fontFamily: "Poppins",
                            fontSize: 25),
                      ),
                      Text(
                        "${_weather?.cityName}",
                        style: const TextStyle(
                            color: Colors.white,
                            fontFamily: "Poppins",
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                          getWeatherAnimation(
                              _weather?.mainCondition, _weather?.dayornight),
                          width: 150,
                          height: 150),
                      Text("${_weather?.temperature.round()}°",
                          style: const TextStyle(
                              color: Colors.white,
                              fontFamily: "Poppins",
                              fontSize: 80,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                  const Divider(
                    color: Colors.white,
                    height: 20,
                    thickness: 1.3,
                  ),
                  Text(
                    getMainCondition(
                        _weather?.mainCondition, _weather?.dayornight),
                    style: const TextStyle(
                      color: Colors.white,
                      fontFamily: "Poppins",
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.0, 1.0),
                      blurRadius: 6.0),
                ],
                gradient: const LinearGradient(colors: [
                  Colors.purple,
                  Colors.blue,
                ], begin: Alignment.bottomRight, end: Alignment.topLeft),
                borderRadius: BorderRadius.circular(20),
              ),
              margin: const EdgeInsets.only(left: 20, right: 20, bottom: 15),
              padding: const EdgeInsets.only(right: 20, left: 20, top: 10, bottom: 10),
              child: const Text(
                "Sana özel önerilerimiz var.\nSol üstteki lambaya tıkla ve gör!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Poppins",
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0.0, 1.0),
                            blurRadius: 6.0),
                      ],
                      gradient: const LinearGradient(colors: [
                        Colors.purple,
                        Colors.blue,
                      ], begin: Alignment.bottomRight, end: Alignment.topLeft),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    margin: const EdgeInsets.only(left: 20),
                    padding: const EdgeInsets.only(
                        top: 10, left: 15, right: 15, bottom: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Yağış",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Poppins",
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "%${_weather?.rainChance}",
                          style: const TextStyle(
                            color: Colors.white,
                            fontFamily: "Poppins",
                            fontSize: 23,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0.0, 1.0),
                            blurRadius: 6.0),
                      ],
                      gradient: const LinearGradient(colors: [
                        Colors.purple,
                        Colors.blue,
                      ], begin: Alignment.bottomRight, end: Alignment.topLeft),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    margin: const EdgeInsets.only(left: 10, right: 10),
                    padding: const EdgeInsets.only(
                        top: 10, left: 15, right: 15, bottom: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Rüzgar",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Poppins",
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "${_weather?.windSpeed.round()} km/s",
                          style: const TextStyle(
                            color: Colors.white,
                            fontFamily: "Poppins",
                            fontSize: 23,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0.0, 1.0),
                            blurRadius: 6.0),
                      ],
                      gradient: const LinearGradient(colors: [
                        Colors.purple,
                        Colors.blue,
                      ], begin: Alignment.bottomRight, end: Alignment.topLeft),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    margin: const EdgeInsets.only(right: 10),
                    padding: const EdgeInsets.only(
                        top: 10, left: 15, right: 15, bottom: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Nem",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Poppins",
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "${_weather?.humidity}%",
                          style: const TextStyle(
                            color: Colors.white,
                            fontFamily: "Poppins",
                            fontSize: 23,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0.0, 1.0),
                            blurRadius: 6.0),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.0, 1.0),
                      blurRadius: 6.0),
                ],
                gradient: const LinearGradient(colors: [
                  Colors.purple,
                  Colors.blue,
                ], begin: Alignment.bottomRight, end: Alignment.topLeft),
                borderRadius: BorderRadius.circular(20),
              ),
              height: 250,
              margin: const EdgeInsets.only(
                  top: 0, left: 20, right: 20, bottom: 0),
              padding: const EdgeInsets.only(left: 20, top: 15, right: 20),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: const Text(
                      "7 Günlük Tahmin",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Poppins",
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const Divider(
                    color: Colors.white,
                    height: 20,
                    thickness: 1.3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Bugün\n${sevenDayForecast(_weather?.secondDate)}\n${sevenDayForecast(_weather?.thirdDate)}\n${sevenDayForecast(_weather?.fourthDate)}\n${sevenDayForecast(_weather?.fifthDate)}\n${sevenDayForecast(_weather?.sixthDate)}\n${sevenDayForecast(_weather?.seventhDate)}",
                            style: const TextStyle(
                              color: Colors.white,
                              fontFamily: "Poppins",
                              fontSize: 17,
                              shadows: [
                                Shadow(
                                  blurRadius: 10.0,
                                  color: Colors.black,
                                  offset: Offset(1.0, 1.0),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset(
                            getWeatherAnimation(
                                _weather?.todayCondition, _weather?.dayornight),
                            width: 25,
                            height: 25,
                          ),
                          Image.asset(
                            getWeatherAnimation(_weather?.secondCondition,
                                _weather?.dayornight),
                            width: 25,
                            height: 25,
                          ),
                          Image.asset(
                            getWeatherAnimation(
                                _weather?.thirdCondition, _weather?.dayornight),
                            width: 25,
                            height: 25,
                          ),
                          Image.asset(
                            getWeatherAnimation(_weather?.fourthCondition,
                                _weather?.dayornight),
                            width: 25,
                            height: 25,
                          ),
                          Image.asset(
                            getWeatherAnimation(
                                _weather?.fifthCondition, _weather?.dayornight),
                            width: 25,
                            height: 25,
                          ),
                          Image.asset(
                            getWeatherAnimation(
                                _weather?.sixthCondition, _weather?.dayornight),
                            width: 25,
                            height: 25,
                          ),
                          Image.asset(
                            getWeatherAnimation(_weather?.seventhCondition,
                                _weather?.dayornight),
                            width: 25,
                            height: 25,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "${_weather?.todayMinTemperature.round()}° / ${_weather?.todayMaxTemperature.round()}°\n${_weather?.secondMinTemperature.round()}° / ${_weather?.secondMaxTemperature.round()}°\n${_weather?.thirdMinTemperature.round()}° / ${_weather?.thirdMaxTemperature.round()}°\n${_weather?.fourthMinTemperature.round()}° / ${_weather?.fourthMaxTemperature.round()}°\n${_weather?.fifthMinTemperature.round()}° / ${_weather?.fifthMaxTemperature.round()}°\n${_weather?.sixthMinTemperature.round()}° / ${_weather?.sixthMaxTemperature.round()}°\n${_weather?.seventhMinTemperature.round()}° / ${_weather?.seventhMaxTemperature.round()}°",
                            style: const TextStyle(
                              color: Colors.white,
                              fontFamily: "Poppins",
                              fontSize: 17,
                              shadows: [
                                Shadow(
                                  blurRadius: 10.0,
                                  color: Colors.black,
                                  offset: Offset(1.0, 1.0),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 3),
                ],
              ),
            ),
          ],
        ),
      );
    }
  }
}
