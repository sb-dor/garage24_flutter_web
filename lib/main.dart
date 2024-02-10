import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moshin_flutter_web/core/api/api_settings.dart';
import 'package:moshin_flutter_web/features/main_screen/presentation/bloc/main_screen_bloc.dart';
import 'package:moshin_flutter_web/x_container_injections/injection_container.dart';
import 'package:moshin_flutter_web/routing.dart';
import 'package:url_strategy/url_strategy.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();
  await initInjections();
  await APISettings.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => locator<MainScreenBloc>()),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: goRouter,
      ),
    );
  }
}
