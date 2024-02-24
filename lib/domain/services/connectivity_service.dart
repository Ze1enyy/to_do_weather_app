import 'package:connectivity_plus/connectivity_plus.dart';

abstract class ConnectivityService {
  Stream<ConnectivityResult> getConnectionStatus();
}
