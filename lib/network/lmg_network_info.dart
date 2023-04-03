import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';

abstract class NetworkInfo {
  Future<bool> get isConnected;
  Stream<ConnectivityResult> onConnectivityChanged();
}

class NetworkInfoImpl implements NetworkInfo {
  final Connectivity _connectivity;
  NetworkInfoImpl(this._connectivity);

  getConnectivity() => _connectivity.checkConnectivity();

  @override
  Future<bool> get isConnected =>
      _connectivity.checkConnectivity().then((ConnectivityResult value) =>
          value == ConnectivityResult.mobile ||
          value == ConnectivityResult.wifi ||
          value == ConnectivityResult.ethernet);

  @override
  Stream<ConnectivityResult> onConnectivityChanged() =>
      _connectivity.onConnectivityChanged;
}
