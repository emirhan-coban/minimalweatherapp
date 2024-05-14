// ignore_for_file: file_names

import 'package:intl/intl.dart';

sevenDayForecast(epoch) {
  if (epoch == null) {
    return "Loading...";
  }
  String? date = DateFormat.EEEE().format(DateTime.fromMillisecondsSinceEpoch(epoch! * 1000));
  switch (date) {
    case "Monday":
      return "Pazartesi";
    case "Tuesday":
      return "Salı";
    case "Wednesday":
      return "Çarşamba";
    case "Thursday":
      return "Perşembe";
    case "Friday":
      return "Cuma";
    case "Saturday":
      return "Cumartesi";
    case "Sunday":
      return "Pazar";
    default:
      return "Loading...";
  }
}