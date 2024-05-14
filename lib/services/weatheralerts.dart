// ignore_for_file: file_names

rainAlert(rainChance) {
  if (rainChance == 0) {
    return 'Bulunduğunuz bölgede bugün yağış beklenmiyor. Evden çıkarken şemsiyeni yanına almana gerek yok. 🌂';
  } else if (rainChance > 0 && rainChance < 25) {
    return 'Bulunduğunuz bölgede bugün %$rainChance olasılıkla yağış bekleniyor. Evden çıkarken şemsiyeni almak isteyebilirsin. 🌂';
  } else if (rainChance > 25 && rainChance < 50) {
    return 'Bulunduğunuz bölgede bugün %$rainChance olasılıkla yağış bekleniyor. Evden çıkarken şemsiyeni alabilirsin. 🌂';
  } else if (rainChance > 50 && rainChance < 101) {
    return 'Bulunduğunuz bölgede bugün %$rainChance olasılıkla yağış bekleniyor. Evden çıkarken şemsiyeni almayı unutma. 🌂';
  } else {
    return 'Veriler güncelleniyor, lütfen bekleyiniz.';
  }
}

clothesAlert(temp) {
  if (temp < 5) {
    return 'Bugün hava oldukça soğuk. Kalın giysiler giymeyi unutma. 🧥';
  } else if (temp > 5 && temp < 15) {
    return 'Bugün hava oldukça soğuk. Kalın giysiler giymeyi unutma. Üşütmek istemezsin. 🧥';
  } else if (temp > 15 && temp < 25) {
    return 'Bugün hava ılık. Üzerine hafif bir şeyler alabilirsin. 🧥';
  } else if (temp > 25 && temp < 35) {
    return 'Bugün hava sıcak. İnce giysiler giymeyi unutma. Ayrıca bol su iç. 🧥';
  } else if (temp > 35) {
    return 'Bugün hava oldukça sıcak. Güneşten korunmayı ve bol su içmeyi unutma. 🧥';
  } else {
    return 'Veriler güncelleniyor, lütfen bekleyiniz.';
  }
}