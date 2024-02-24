class ApiUri {
  static const String baseUrl =
      'https://api.openweathermap.org/data/2.5/weather';
  // Api provides iconCode for weather conditions to build Image.network icon
  static String buildImageUrl(String iconCode) {
    return 'https://openweathermap.org/img/wn/$iconCode@2x.png';
  }
}
