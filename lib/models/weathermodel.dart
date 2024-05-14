// ignore_for_file: file_names

class Weather {
  final String cityName;
  final double temperature;
  final String mainCondition;
  final int dayornight;
  final double windSpeed;
  final double feelslike;
  final int humidity;
  final int cloud;
  final dynamic todayDate;
  final dynamic secondDate;
  final dynamic thirdDate;
  final dynamic fourthDate;
  final dynamic fifthDate;
  final dynamic sixthDate;
  final dynamic seventhDate;
  final String todayCondition;
  final String secondCondition;
  final String thirdCondition;
  final String fourthCondition;
  final String fifthCondition;
  final String sixthCondition;
  final String seventhCondition;
  final double todayMinTemperature;
  final double todayMaxTemperature;
  final double secondMinTemperature;
  final double secondMaxTemperature;
  final double thirdMinTemperature;
  final double thirdMaxTemperature;
  final double fourthMinTemperature;
  final double fourthMaxTemperature;
  final double fifthMinTemperature;
  final double fifthMaxTemperature;
  final double sixthMinTemperature;
  final double sixthMaxTemperature;
  final double seventhMinTemperature;
  final double seventhMaxTemperature;
  final int rainChance;
  final double avgTemperature;

  Weather(
      {required this.cityName,
      required this.todayMinTemperature,
      required this.rainChance,
      required this.avgTemperature,
      required this.todayMaxTemperature,
      required this.secondMinTemperature,
      required this.secondMaxTemperature,
      required this.thirdMinTemperature,
      required this.thirdMaxTemperature,
      required this.fourthMinTemperature,
      required this.fourthMaxTemperature,
      required this.fifthMinTemperature,
      required this.fifthMaxTemperature,
      required this.sixthMinTemperature,
      required this.sixthMaxTemperature,
      required this.seventhMinTemperature,
      required this.seventhMaxTemperature,
      required this.todayCondition,
      required this.secondCondition,
      required this.thirdCondition,
      required this.fourthCondition,
      required this.fifthCondition,
      required this.sixthCondition,
      required this.seventhCondition,
      required this.humidity,
      required this.todayDate,
      required this.secondDate,
      required this.thirdDate,
      required this.fourthDate,
      required this.fifthDate,
      required this.sixthDate,
      required this.seventhDate,
      required this.feelslike,
      required this.windSpeed,
      required this.temperature,
      required this.dayornight,
      required this.cloud,
      required this.mainCondition});

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      cloud: json['current']['cloud'],
      avgTemperature: json['forecast']['forecastday'][0]['day']['avgtemp_c'].toDouble(),
      rainChance: json['forecast']['forecastday'][0]['day']['daily_chance_of_rain'],
      todayMinTemperature: json['forecast']['forecastday'][0]['day']['mintemp_c'].toDouble(),
      todayMaxTemperature: json['forecast']['forecastday'][0]['day']['maxtemp_c'].toDouble(),
      secondMinTemperature: json['forecast']['forecastday'][1]['day']['mintemp_c'].toDouble(),
      secondMaxTemperature: json['forecast']['forecastday'][1]['day']['maxtemp_c'].toDouble(),
      thirdMinTemperature: json['forecast']['forecastday'][2]['day']['mintemp_c'].toDouble(),
      thirdMaxTemperature: json['forecast']['forecastday'][2]['day']['maxtemp_c'].toDouble(),
      fourthMinTemperature: json['forecast']['forecastday'][3]['day']['mintemp_c'].toDouble(),
      fourthMaxTemperature: json['forecast']['forecastday'][3]['day']['maxtemp_c'].toDouble(),
      fifthMinTemperature: json['forecast']['forecastday'][4]['day']['mintemp_c'].toDouble(),
      fifthMaxTemperature: json['forecast']['forecastday'][4]['day']['maxtemp_c'].toDouble(),
      sixthMinTemperature: json['forecast']['forecastday'][5]['day']['mintemp_c'].toDouble(),
      sixthMaxTemperature: json['forecast']['forecastday'][5]['day']['maxtemp_c'].toDouble(),
      seventhMinTemperature: json['forecast']['forecastday'][6]['day']['mintemp_c'].toDouble(),
      seventhMaxTemperature: json['forecast']['forecastday'][6]['day']['maxtemp_c'].toDouble(),
      todayCondition: json['forecast']['forecastday'][0]['day']['condition']['text'],
      secondCondition: json['forecast']['forecastday'][1]['day']['condition']['text'],
      thirdCondition: json['forecast']['forecastday'][2]['day']['condition']['text'],
      fourthCondition: json['forecast']['forecastday'][3]['day']['condition']['text'],
      fifthCondition: json['forecast']['forecastday'][4]['day']['condition']['text'],
      sixthCondition: json['forecast']['forecastday'][5]['day']['condition']['text'],
      seventhCondition: json['forecast']['forecastday'][6]['day']['condition']['text'],
      todayDate: json['forecast']['forecastday'][0]['date_epoch'],
      secondDate: json['forecast']['forecastday'][1]['date_epoch'],
      thirdDate: json['forecast']['forecastday'][2]['date_epoch'],
      fourthDate: json['forecast']['forecastday'][3]['date_epoch'],
      fifthDate: json['forecast']['forecastday'][4]['date_epoch'],
      sixthDate: json['forecast']['forecastday'][5]['date_epoch'],
      seventhDate: json['forecast']['forecastday'][6]['date_epoch'],
      humidity: json['current']['humidity'],
      feelslike: json['current']['feelslike_c'].toDouble(),
      windSpeed: json['current']['wind_kph'].toDouble(),
      dayornight: json['current']['is_day'],
      cityName: json["location"]["name"],
      temperature: json['current']['temp_c'].toDouble(),
      mainCondition: json['current']["condition"]['text'],
    );
  }
}
