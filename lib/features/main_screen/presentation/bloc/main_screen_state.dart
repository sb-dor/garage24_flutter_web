part of 'main_screen_bloc.dart';

abstract class MainScreenState {}

class MainScreenLoadingState extends MainScreenState {}

class MainScreenErrorState extends MainScreenState {}

class MainScreenLoadedState extends MainScreenState {
  List<Auto> autos = [];

  MainScreenLoadedState({required this.autos});
}
