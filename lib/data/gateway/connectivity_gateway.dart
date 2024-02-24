import 'package:connectivity_plus/connectivity_plus.dart';

class ConnectivityGateway {
  final connectivity = Connectivity();

  Stream<ConnectivityResult> getConnectionStatus() {
    return connectivity.onConnectivityChanged;
  }
}
