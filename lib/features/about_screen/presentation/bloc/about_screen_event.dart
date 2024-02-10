part of 'about_screen_bloc.dart';

abstract class AboutScreenEvent {}

class RefreshAboutScreen extends AboutScreenEvent {
  String markUrl;
  String modelUrl;
  int id;

  RefreshAboutScreen({required this.id, required this.markUrl, required this.modelUrl});
}
