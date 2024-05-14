// ignore_for_file: file_names

getWeatherAnimation(String? mainCondition, int? dayornight) {
    if (mainCondition == null) return "assets/images/cloudy.png"; // return as default
    if (dayornight == 1) {
      switch (mainCondition.toLowerCase()) {
        case "sunny":
          return "assets/images/sunny.png";
        case "partly cloudy":
          return "assets/images/partly cloudy.png";
        case "cloudy":
          return "assets/images/cloudy.png";
        case "overcast":
          return "assets/images/cloudy.png";
        case "mist":
          return "assets/images/foggy.png";
        case "patchy rain nearby":
          return "assets/images/rain.png";
        case "patchy snow nearby":
          return "assets/images/snow.png";
        case "patchy sleet nearby":
          return "assets/images/rain snow.png";
        case "patchy freezing drizzle nearby":
          return "assets/images/rain.png";
        case "thundery outbreaks in nearby":
          return "assets/images/thunder.png";
        case "blowing snow":
          return "assets/images/little snow.png";
        case "blizzard":
          return "assets/images/snow.png";
        case "fog":
          return "assets/images/foggy.png";
        case "light freezing rain":
          return "assets/images/rain.png";
        case "freezing fog":
          return "assets/images/foggy.png";
        case "patchy light drizzle":
          return "assets/images/rain.png";
        case "light drizzle":
          return "assets/images/rain.png";
        case "freezing drizzle":
          return "assets/images/rain.png";
        case "heavy freezing drizzle":
          return "assets/images/rain.png";
        case "patchy light rain":
          return "assets/images/rain.png";
        case "light rain":
          return "assets/images/rain.png";
        case "moderate rain at times":
          return "assets/images/rain.png";
        case "moderate rain":
          return "assets/images/rain.png";
        case "heavy rain at times":
          return "assets/images/rain.png";
        case "heavy rain":
          return "assets/images/rain.png";
        case "moderate or heavy freezing rain":
          return "assets/images/rain.png";
        case "light sleet":
          return "assets/images/rain snow.png";
        case "moderate or heavy sleet":
          return "assets/images/rain snow.png";
        case "patchy light snow":
          return "assets/images/little snow.png";
        case "light snow":
          return "assets/images/little snow.png";
        case "patchy moderate snow":
          return "assets/images/little snow.png";
        case "moderate snow":
          return "assets/images/snow.png";
        case "patchy heavy snow":
          return "assets/images/snow.png";
        case "heavy snow":
          return "assets/images/snow.png";
        case "ice pellets":
          return "assets/images/ice pellets.png";
        case "light rain shower":
          return "assets/images/rain.png";
        case "moderate or heavy rain shower":
          return "assets/images/rain.png";
        case "torrential rain shower":
          return "assets/images/rain.png";
        case "light sleet showers":
          return "assets/images/rain.png";
        case "moderate or heavy sleet showers":
          return "assets/images/rain.png";
        case "light snow showers":
          return "assets/images/snow.png";
        case "moderate or heavy snow showers":
          return "assets/images/snow.png";
        case "light showers of ice pellets":
          return "assets/images/ice pellets.png";
        case "moderate or heavy showers of ice pellets":
          return "assets/images/ice pellets.png";
        case "patchy light rain in area with thunder":
          return "assets/images/thunder rain.png";
        case "moderate or heavy rain in area with thunder":
          return "assets/images/thunder rain.png";
        case "patchy light snow in area with thunder":
          return "assets/images/thunder snow.png";
        case "moderate or heavy snow in area with thunder":
          return "assets/images/thunder snow.png";
        default:
          return "assets/images/cloudy.png";
      }
    } else {
      switch (mainCondition.toLowerCase()) {
        case "clear":
          return "assets/images/clear.png";
        case "partly cloudy":
          return "assets/images/partly cloudy night.png";
        case "cloudy":
          return "assets/images/cloudy.png";
        case "overcast":
          return "assets/images/foggy.png";
        case "mist":
          return "assets/images/night foggy.png";
        case "patchy rain nearby":
          return "assets/images/rain.png";
        case "patchy snow nearby":
          return "assets/images/snow.png";
        case "patchy sleet nearby":
          return "assets/images/rain snow.png";
        case "patchy freezing drizzle nearby":
          return "assets/images/rain.png";
        case "thundery outbreaks in nearby":
          return "assets/images/thunder.png";
        case "blowing snow":
          return "assets/images/little snow.png";
        case "blizzard":
          return "assets/images/snow.png";
        case "fog":
          return "assets/images/night foggy.png";
        case "light freezing rain":
          return "assets/images/rain.png";
        case "freezing fog":
          return "assets/images/night foggy.png";
        case "patchy light drizzle":
          return "assets/images/rain.png";
        case "light drizzle":
          return "assets/images/rain.png";
        case "freezing drizzle":
          return "assets/images/rain.png";
        case "heavy freezing drizzle":
          return "assets/images/rain.png";
        case "patchy light rain":
          return "assets/images/rain.png";
        case "light rain":
          return "assets/images/rain.png";
        case "moderate rain at times":
          return "assets/images/rain.png";
        case "moderate rain":
          return "assets/images/rain.png";
        case "heavy rain at times":
          return "assets/images/rain.png";
        case "heavy rain":
          return "assets/images/rain.png";
        case "moderate or heavy freezing rain":
          return "assets/images/rain.png";
        case "light sleet":
          return "assets/images/rain snow.png";
        case "moderate or heavy sleet":
          return "assets/images/rain snow.png";
        case "patchy light snow":
          return "assets/images/little snow.png";
        case "light snow":
          return "assets/images/little snow.png";
        case "patchy moderate snow":
          return "assets/images/little snow.png";
        case "moderate snow":
          return "assets/images/snow.png";
        case "patchy heavy snow":
          return "assets/images/snow.png";
        case "heavy snow":
          return "assets/images/snow.png";
        case "ice pellets":
          return "assets/images/ice pellets.png";
        case "light rain shower":
          return "assets/images/rain.png";
        case "moderate or heavy rain shower":
          return "assets/images/rain.png";
        case "torrential rain shower":
          return "assets/images/rain.png";
        case "light sleet showers":
          return "assets/images/rain snow.png";
        case "moderate or heavy sleet showers":
          return "assets/images/rain snow.png";
        case "light snow showers":
          return "assets/images/snow.png";
        case "moderate or heavy snow showers":
          return "assets/images/snow.png";
        case "light showers of ice pellets":
          return "assets/images/ice pellets.png";
        case "moderate or heavy showers of ice pellets":
          return "assets/images/ice pellets.png";
        case "patchy light rain in area with thunder":
          return "assets/images/thunder rain.png";
        case "moderate or heavy rain in area with thunder":
          return "assets/images/thunder rain.png";
        case "patchy light snow in area with thunder":
          return "assets/images/thunder snow.png";
        case "moderate or heavy snow in area with thunder":
          return "assets/images/thunder snow.png";
        default:
          return "assets/images/cloudy.png";
      }
    }
  }