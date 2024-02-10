import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moshin_flutter_web/features/main_screen/domain/repositories/main_screen_repository.dart';
import 'package:moshin_flutter_web/features/main_screen/domain/usecases/main_screen_get_autos.dart';
import 'package:moshin_flutter_web/global_features/domain/entities/auto/auto.dart';

part 'main_screen_event.dart';

part 'main_screen_state.dart';

class MainScreenBloc extends Bloc<MainScreenEvent, MainScreenState> {
  late final MainScreenGetAutos _getAutos;
  final MainScreenRepository _mainScreenRepository;

  MainScreenBloc(this._mainScreenRepository) : super(MainScreenLoadingState()) {
    _getAutos = MainScreenGetAutos(_mainScreenRepository);

    on<RefreshMainScreenEvent>((event, emit) async {
      try {
        emit(MainScreenLoadingState());

        final autos = await _getAutos.getAutos();

        emit(MainScreenLoadedState(autos: autos));
      } catch (e) {
        emit(MainScreenErrorState());
        debugPrint("RefreshMainScreenEvent error is $e");
      }
    });

    //
    on<PaginateMainScreenEvent>((event, emit) {
      // TODO
    });
  }
}
