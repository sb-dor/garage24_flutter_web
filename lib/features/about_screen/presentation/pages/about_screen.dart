import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moshin_flutter_web/features/about_screen/presentation/bloc/about_screen_bloc.dart';
import 'package:moshin_flutter_web/features/main_screen/presentation/widgets/main_app_bar_widget/main_app_bar_widget.dart';

class AboutScreen extends StatefulWidget {
  final String markName;
  final String modelName;
  final int id;

  const AboutScreen({
    super.key,
    required this.markName,
    required this.modelName,
    required this.id,
  });

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<AboutScreenBloc>().add(
          RefreshAboutScreen(
            id: widget.id,
            markUrl: widget.markName,
            modelUrl: widget.modelName,
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AboutScreenBloc, AboutScreenState>(builder: (context, state) {
      return Scaffold(
        body: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: MainAppBarWidget(),
            ),
            SliverFillRemaining(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (state is LoadingAboutScreen)
                    const Text("Loading")
                  else if (state is ErrorAboutScreen)
                    Text(state.errorMessage)
                  else if (state is LoadedAboutScreen)
                    Text(
                      "${state.auto?.markEntity?.name} | ${state.auto?.autoModelEntity?.name}"
                      " | ${state.auto?.generationEntity?.name}",
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.1,
                        fontSize: 20,
                      ),
                    )
                ],
              ),
            )
          ],
        ),
      );
    });
  }
}
