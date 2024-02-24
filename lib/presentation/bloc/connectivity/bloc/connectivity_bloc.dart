import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:to_do_app/domain/usecases/get_connection_status_usecase.dart';

part 'connectivity_event.dart';
part 'connectivity_state.dart';
part 'connectivity_bloc.freezed.dart';

class ConnectivityBloc extends Bloc<ConnectivityEvent, ConnectivityState> {
  ConnectivityBloc(this._getConnectionStatusUseCase) : super(const _Initial()) {
    on<ConnectivityEvent>((event, emit) async {
      await event.when(
        getConnectionStatus: () => _getConnectionStatus(emit),
      );
    });
  }

  Future<void> _getConnectionStatus(Emitter<ConnectivityState> emit) async {
    await emit.forEach(
      _getConnectionStatusUseCase(),
      onData: (data) {
        return data == ConnectivityResult.wifi ||
                data == ConnectivityResult.mobile
            ? const _Online()
            : const _Offline();
      },
    );
  }

  final GetConnectionStatusUseCase _getConnectionStatusUseCase;
}
