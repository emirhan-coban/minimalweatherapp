// ignore_for_file: file_names

getMainCondition(String? mainCondition, int? dayornight) {
    if (mainCondition == null) return "Loading..."; // return as default
    if (dayornight == 1) {
      switch (mainCondition.toLowerCase()) {
        case "sunny":
          return "Güneşli";
        case "partly cloudy":
          return "Parçalı Bulutlu";
        case "cloudy":
          return "Bulutlu";
        case "overcast":
          return "Çok Bulutlu";
        case "mist":
          return "Sisli";
        case "patchy rain nearby":
          return "Bölgesel Yağmur Yağışlı";
        case "patchy snow nearby":
          return "Bölgesel Kar Yağışlı";
        case "patchy sleet nearby":
          return "Bölgesel Karla Karışık Yağmurlu";
        case "patchy freezing drizzle nearby":
          return "Bölgesel Donmuş Çisenti";
        case "thundery outbreaks in nearby":
          return "Bölgesel Gök Gürültülü Yağmurlu";
        case "blowing snow":
          return "Tipi";
        case "blizzard":
          return "Kar Fırtınası";
        case "fog":
          return "Sisli";
        case "light freezing rain":
          return "Hafif Dondurucu Yağmurlu";
        case "freezing fog":
          return "Dondurucu Sis";
        case "patchy light drizzle":
          return "Düzensiz Hafif Çisenti";
        case "light drizzle":
          return "Hafif Çisenti";
        case "freezing drizzle":
          return "Dondurucu Çisenti";
        case "heavy freezing drizzle":
          return "Yoğun Dondurucu Çisenti";
        case "patchy light rain":
          return "Düzensiz Hafif Yağmurlu";
        case "light rain":
          return "Hafif Yağmurlu";
        case "moderate rain at times":
          return "Düzensiz Yağmurlu";
        case "moderate rain":
          return "Yağmurlu";
        case "heavy rain at times":
          return "Düzensiz Şiddetli Yağmurlu";
        case "heavy rain":
          return "Şiddetli Yağmurlu";
        case "moderate or heavy freezing rain":
          return "Şiddetli Dondurucu Yağmurlu";
        case "light sleet":
          return "Hafif Karla Karışık Yağmurlu";
        case "moderate or heavy sleet":
          return "Şiddetli Karla Karışık Yağmurlu";
        case "patchy light snow":
          return "Düzensiz Hafif Kar Yağışlı";
        case "light snow":
          return "Hafif Kar Yağışlı";
        case "patchy moderate snow":
          return "Düzensiz Kar Yağışlı";
        case "moderate snow":
          return "Kar Yağışlı";
        case "patchy heavy snow":
          return "Düzensiz Şiddetli Kar Yağışlı";
        case "heavy snow":
          return "Şiddetli Kar Yağışlı";
        case "ice pellets":
          return "Buz Taneli Yağmurlu";
        case "light rain shower":
          return "Hafif Sağanak Yağmurlu";
        case "moderate or heavy rain shower":
          return "Sağanak Yağmurlu";
        case "torrential rain shower":
          return "Şiddetli Sağanak Yağmurlu";
        case "light sleet showers":
          return "Hafif Karla Karışık Yağmurlu";
        case "moderate or heavy sleet showers":
          return "Karla Karışık Sağanak Yağmurlu";
        case "light snow showers":
          return "Hafif Sağanak Kar Yağışlı";
        case "moderate or heavy snow showers":
          return "Sağanak Kar Yağışlı";
        case "light showers of ice pellets":
          return "Hafif Buz Taneli Yağış";
        case "moderate or heavy showers of ice pellets":
          return "Buz Taneli Sağanak Yağış";
        case "patchy light rain in area with thunder":
          return "Düzensiz Gök Gürültülü Yağmurlu";
        case "moderate or heavy rain in area with thunder":
          return "Gök Gürültülü Yağmurlu";
        case "patchy light snow in area with thunder":
          return "Gök Gürültülü Düzensiz Kar Yağışlı";
        case "moderate or heavy snow in area with thunder":
          return "Gök Gürültülü Kar Yağışlı";
        default:
          return "Gününüz Güzel Geçsin";
      }
    } else {
      switch (mainCondition.toLowerCase()) {
        case "clear":
          return "Açık";
        case "partly cloudy":
          return "Parçalı Bulutlu";
        case "cloudy":
          return "Bulutlu";
        case "overcast":
          return "Çok Bulutlu";
        case "mist":
          return "Sisli";
        case "patchy rain nearby":
          return "Bölgesel Yağmur Yağışlı";
        case "patchy snow nearby":
          return "Bölgesel Kar Yağışlı";
        case "patchy sleet nearby":
          return "Bölgesel Karla Karışık Yağmurlu";
        case "patchy freezing drizzle nearby":
          return "Bölgesel Donmuş Çisenti";
        case "thundery outbreaks in nearby":
          return "Bölgesel Gök Gürültülü Yağmurlu";
        case "blowing snow":
          return "Tipi";
        case "blizzard":
          return "Kar Fırtınası";
        case "fog":
          return "Sisli";
        case "light freezing rain":
          return "Hafif Dondurucu Yağmurlu";
        case "freezing fog":
          return "Dondurucu Sis";
        case "patchy light drizzle":
          return "Düzensiz Hafif Çisenti";
        case "light drizzle":
          return "Hafif Çisenti";
        case "freezing drizzle":
          return "Dondurucu Çisenti";
        case "heavy freezing drizzle":
          return "Yoğun Dondurucu Çisenti";
        case "patchy light rain":
          return "Düzensiz Hafif Yağmurlu";
        case "light rain":
          return "Hafif Yağmurlu";
        case "moderate rain at times":
          return "Düzensiz Yağmurlu";
        case "moderate rain":
          return "Yağmurlu";
        case "heavy rain at times":
          return "Düzensiz Şiddetli Yağmurlu";
        case "heavy rain":
          return "Şiddetli Yağmurlu";
        case "moderate or heavy freezing rain":
          return "Şiddetli Dondurucu Yağmurlu";
        case "light sleet":
          return "Hafif Karla Karışık Yağmurlu";
        case "moderate or heavy sleet":
          return "Şiddetli Karla Karışık Yağmurlu";
        case "patchy light snow":
          return "Düzensiz Hafif Kar Yağışlı";
        case "light snow":
          return "Hafif Kar Yağışlı";
        case "patchy moderate snow":
          return "Düzensiz Kar Yağışlı";
        case "moderate snow":
          return "Kar Yağışlı";
        case "patchy heavy snow":
          return "Düzensiz Şiddetli Kar Yağışlı";
        case "heavy snow":
          return "Şiddetli Kar Yağışlı";
        case "ice pellets":
          return "Buz Taneli Yağmurlu";
        case "light rain shower":
          return "Hafif Sağanak Yağmurlu";
        case "moderate or heavy rain shower":
          return "Sağanak Yağmurlu";
        case "torrential rain shower":
          return "Şiddetli Sağanak Yağmurlu";
        case "light sleet showers":
          return "Hafif Karla Karışık Yağmurlu";
        case "moderate or heavy sleet showers":
          return "Karla Karışık Sağanak Yağmurlu";
        case "light snow showers":
          return "Hafif Sağanak Kar Yağışlı";
        case "moderate or heavy snow showers":
          return "Sağanak Kar Yağışlı";
        case "light showers of ice pellets":
          return "Hafif Buz Taneli Yağış";
        case "moderate or heavy showers of ice pellets":
          return "Buz Taneli Sağanak Yağış";
        case "patchy light rain in area with thunder":
          return "Düzensiz Gök Gürültülü Yağmurlu";
        case "moderate or heavy rain in area with thunder":
          return "Gök Gürültülü Yağmurlu";
        case "patchy light snow in area with thunder":
          return "Gök Gürültülü Düzensiz Kar Yağışlı";
        case "moderate or heavy snow in area with thunder":
          return "Gök Gürültülü Kar Yağışlı";
        default:
          return "Gününüz Güzel Geçsin";
      }
    }
  }