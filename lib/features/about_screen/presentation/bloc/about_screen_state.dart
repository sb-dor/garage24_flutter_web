part of 'about_screen_bloc.dart';

abstract class AboutScreenState {}

class LoadingAboutScreen extends AboutScreenState {}

class ErrorAboutScreen extends AboutScreenState {
  final String errorMessage;

  ErrorAboutScreen({required this.errorMessage});
}

class LoadedAboutScreen extends AboutScreenState {
  final Auto? auto;

  LoadedAboutScreen({required this.auto});
}
