import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moshin_flutter_web/features/about_screen/domain/repository/about_screen_repository.dart';
import 'package:moshin_flutter_web/features/about_screen/domain/usecases/get_about.dart';
import 'package:moshin_flutter_web/global_features/domain/entities/auto/auto.dart';

part 'about_screen_event.dart';

part 'about_screen_state.dart';

class AboutScreenBloc extends Bloc<AboutScreenEvent, AboutScreenState> {
  late final GetAbout _about;
  final AboutScreenRepository _aboutScreenRepository;

  AboutScreenBloc(this._aboutScreenRepository) : super(LoadingAboutScreen()) {
    _about = GetAbout(_aboutScreenRepository);

    on<RefreshAboutScreen>((event, emit) async {
      try {
        emit(LoadingAboutScreen());

        Map<String, dynamic> data = {
          "mark": event.markUrl,
          "model": event.modelUrl,
          "auto_id": event.id,
        };

        var auto = await _about.getAuto(data);

        emit(LoadedAboutScreen(auto: auto));
      } catch (e) {
        debugPrint("RefreshAboutScreen error is: $e");
        emit(ErrorAboutScreen(errorMessage: "Error"));
      }
    });
  }
}
