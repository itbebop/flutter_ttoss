import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_arrow.dart';
import 'package:fast_app_base/common/widget/w_tap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:nav/nav.dart';

class AnimatedAppBar extends StatefulWidget {
  final String title;
  final ScrollController controller;

  const AnimatedAppBar(this.title, {super.key, required this.controller});

  @override
  State<AnimatedAppBar> createState() => _AnimatedAppBarState();
}

class _AnimatedAppBarState extends State<AnimatedAppBar> {
  //final duration = 250.ms; // 적용이 안돼서 아래로
  Duration duration = 100.ms; // 이렇게 초기화하고 아래 build함수에서 변경
  double scrollPosition = 0;

  @override
  void initState() {
    widget.controller.addListener(() {
      setState(() {
        scrollPosition = widget.controller.position.pixels;
      });
    });
    super.initState();
  }

  bool get isTriggered => scrollPosition > 80;
  bool get isNotTriggerd => !isTriggered;
  @override
  Widget build(BuildContext context) {
    duration = 250.ms;
    return Container(
      width: double.infinity,
      color: context.backgroundColor,
      child: SafeArea(
        child: Stack(
          children: [
            Tap(
              onTap: () {
                Nav.pop(context); // package Nav import?
              },
              child: const Arrow(),
            ).p20(),
            AnimatedContainer(
              duration: duration,
              padding: EdgeInsets.only(left: isNotTriggerd ? 20 : 50, top: isNotTriggerd ? 50 : 15),
              child: AnimatedDefaultTextStyle(
                style: TextStyle(fontSize: isNotTriggerd ? 30 : 18, fontWeight: FontWeight.bold),
                duration: duration,
                child: widget.title.text.make(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
