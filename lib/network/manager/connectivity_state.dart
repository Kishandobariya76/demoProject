part of 'connectivity_cubit.dart';

abstract class ConnectivityState extends Equatable {
  const ConnectivityState();
}

class ConnectivityLoading extends ConnectivityState {
  @override
  List<Object> get props => [];
}

class NetworkConnected extends ConnectivityState {
  @override
  List<Object> get props => [];
}

class NetworkFailure extends ConnectivityState {
  @override
  List<Object> get props => [];
}
