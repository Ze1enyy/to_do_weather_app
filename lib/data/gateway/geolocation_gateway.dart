import 'package:geolocator/geolocator.dart';

class GeolocationGateway {
  Future<Position> getCurrentLocation() async {
    final geoPlatform = GeolocatorPlatform.instance;
    final permission = await geoPlatform.checkPermission();

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
        'Location permissions are permanently denied, we cannot request permissions.',
      );
    } else if (permission == LocationPermission.denied) {
      final LocationPermission permission =
          await geoPlatform.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }
    return await geoPlatform.getCurrentPosition();
  }
}
