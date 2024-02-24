import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:to_do_app/domain/services/connectivity_service.dart';

abstract class GetConnectionStatusUseCase {
  GetConnectionStatusUseCase();

  Stream<ConnectivityResult> call();
}

class LocalGetConnectionStatusUseCase implements GetConnectionStatusUseCase {
  LocalGetConnectionStatusUseCase(this.service);
  final ConnectivityService service;
  @override
  Stream<ConnectivityResult> call() {
    return service.getConnectionStatus();
  }
}
