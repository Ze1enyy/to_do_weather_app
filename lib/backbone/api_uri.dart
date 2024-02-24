class ApiUri {
  static const String baseUrl =
      'https://api.openweathermap.org/data/2.5/weather';
  static String buildImageUrl(String imageCode) {
    return 'https://openweathermap.org/img/wn/$imageCode@2x.png';
  }
}
