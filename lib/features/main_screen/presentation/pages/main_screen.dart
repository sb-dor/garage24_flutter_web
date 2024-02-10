import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moshin_flutter_web/core/constants/constants.dart';
import 'package:moshin_flutter_web/features/main_screen/presentation/bloc/main_screen_bloc.dart';
import 'package:moshin_flutter_web/features/main_screen/presentation/pages/mobile/main_mobile_screen.dart';
import 'package:moshin_flutter_web/features/main_screen/presentation/pages/web/web_mobile_screen.dart';
import 'package:moshin_flutter_web/features/main_screen/presentation/widgets/main_app_bar_widget/main_app_bar_widget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<MainScreenBloc>().add(RefreshMainScreenEvent());
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        body: ListView(
          children: [
            const MainAppBarWidget(),
            const SizedBox(height: 10),
            if (constraints.maxWidth >= Constants.mobileWidth)
              const WebMainScreen()
            else
              const MobileMainScreen()
          ],
        ),
      );
    });
  }
}
