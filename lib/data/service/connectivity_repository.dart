import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:to_do_app/data/gateway/connectivity_gateway.dart';
import 'package:to_do_app/domain/services/connectivity_service.dart';

class ConnectivityRepository implements ConnectivityService {
  final ConnectivityGateway _gateway;

  ConnectivityRepository(this._gateway);

  @override
  Stream<ConnectivityResult> getConnectionStatus() {
    return _gateway.getConnectionStatus();
  }
}
