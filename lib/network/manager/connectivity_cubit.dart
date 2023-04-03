import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:equatable/equatable.dart';
import 'package:letmegrab_advert_app/injection_container.dart';
import 'package:letmegrab_advert_app/network/lmg_network_info.dart';


part 'connectivity_state.dart';

class ConnectivityCubit extends Cubit<ConnectivityState> {
  ConnectivityCubit() : super(ConnectivityLoading()) {
    _monitorConnectivity();
  }

  Future<void> _monitorConnectivity() async {
    NetworkInfo networkInfo = sl();

    if (!await networkInfo.isConnected) {
      emit(NetworkFailure());
    }

    networkInfo
        .onConnectivityChanged()
        .listen((ConnectivityResult result) async {
      if (_isConnected(result)) {
        emit(NetworkConnected());
      } else {
        emit(NetworkFailure());
      }
    });
  }

  bool _isConnected(value) {
    return value == ConnectivityResult.mobile ||
        value == ConnectivityResult.wifi ||
        value == ConnectivityResult.ethernet;
  }
}
