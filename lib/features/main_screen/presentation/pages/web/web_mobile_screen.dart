import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:moshin_flutter_web/features/main_screen/presentation/bloc/main_screen_bloc.dart';
import 'package:moshin_flutter_web/global_features/domain/entities/auto/auto.dart';

class WebMainScreen extends StatelessWidget {
  const WebMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainScreenBloc, MainScreenState>(builder: (context, state) {
      if (state is MainScreenLoadingState) {
        return Container(
          child: const Text("Loading"),
        );
      } else if (state is MainScreenLoadedState) {
        return Padding(
          padding: const EdgeInsets.only(left: 50, right: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Рекамендованные",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.1,
                ),
              ),
              const SizedBox(height: 10),
              GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 1.5,
                  ),
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: state.autos.length,
                  itemBuilder: (context, index) {
                    final auto = state.autos[index];
                    return _AutoWidget(
                      auto: auto,
                    );
                  }),
            ],
          ),
        );
      } else {
        return const Text("Error");
      }
    });
  }
}

class _AutoWidget extends StatefulWidget {
  final Auto auto;

  const _AutoWidget({
    super.key,
    required this.auto,
  });

  @override
  State<_AutoWidget> createState() => _AutoWidgetState();
}

class _AutoWidgetState extends State<_AutoWidget> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 275),
    );

    _animation = Tween<Offset>(begin: const Offset(0, 0), end: const Offset(0, -10)).animate(
      CurvedAnimation(parent: _controller, curve: Curves.linear),
    );
  }

  bool hover = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return Transform.translate(
            offset: _animation.value,
            child: GestureDetector(
              onTap: () => context.go(
                context.namedLocation(
                  'about_screen',
                  pathParameters: {
                    "mark" : widget.auto.markEntity?.nameUrl ?? '-',
                    "model" : widget.auto.autoModelEntity?.nameUrl ?? '-',
                    "id" : (widget.auto.id ?? 0).toString(),
                  },
                ),
              ),
              child: MouseRegion(
                onEnter: (v) {
                  setState(() {
                    _controller.forward();
                    hover = true;
                  });
                },
                onExit: (v) {
                  setState(() {
                    _controller.reverse();
                    hover = false;
                  });
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 275),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: hover ? null : Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: hover
                        ? [
                            const BoxShadow(
                              color: Colors.grey,
                              blurRadius: 5,
                              offset: Offset(1, 1),
                            ),
                          ]
                        : [],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Center(
                      child: Text(
                        "${widget.auto.markEntity?.name} ${widget.auto.autoModelEntity?.name}"
                        " | ${widget.auto.generationEntity?.name}",
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.1,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        });
  }
}
