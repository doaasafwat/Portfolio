// ignore_for_file: depend_on_referenced_packages

import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:meta/meta.dart';
import 'package:collection/collection.dart'; 

part 'connected_event.dart';
part 'connected_state.dart';

class ConnectedBloc extends Bloc<ConnectedEvent, ConnectedState> {
  StreamSubscription<List<ConnectivityResult>>? subscription;

  ConnectedBloc() : super(ConnectedInitialState()) {
    on<OnConnectedEvent>((event, emit) => emit(ConnectedSucessState()));
    on<OnNotConnectedEvent>((event, emit) => emit(ConnectedFailureState()));

    Connectivity().checkConnectivity().then((List<ConnectivityResult> resultList) {
      final result = resultList.firstOrNull; 
      if (result != null) {
        _handleConnectivityChange(result);
      }
    });

    subscription = Connectivity().onConnectivityChanged.listen((List<ConnectivityResult> resultList) {
      final result = resultList.firstOrNull;
      if (result != null) {
        _handleConnectivityChange(result);
      }
    });
  }

  void _handleConnectivityChange(ConnectivityResult result) {
    if (result == ConnectivityResult.mobile || result == ConnectivityResult.wifi) {
      add(OnConnectedEvent());
    } else {
      add(OnNotConnectedEvent());
    }
  }

  @override
  Future<void> close() async {
    await subscription?.cancel();
    return super.close();
  }
}
