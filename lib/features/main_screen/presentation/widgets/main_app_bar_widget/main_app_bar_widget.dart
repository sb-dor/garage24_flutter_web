import 'package:flutter/material.dart';
import 'package:moshin_flutter_web/core/constants/constants.dart';
import 'package:moshin_flutter_web/features/main_screen/presentation/widgets/main_app_bar_widget/mobile/main_appbar_mobile_widget.dart';
import 'package:moshin_flutter_web/features/main_screen/presentation/widgets/main_app_bar_widget/web/main_appbar_web_widget.dart';

class MainAppBarWidget extends StatelessWidget {
  const MainAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth >= Constants.mobileWidth) {
        return const MainAppBarWebWidget();
      } else {
        return const MainAppBarMobileWidget();
      }
    });
  }
}
