import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/notification/s_notification.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class TtossAppBar extends StatefulWidget {
  static const double appBarHeight = 60;
  const TtossAppBar({super.key});

  @override
  State<TtossAppBar> createState() => _TtossAppBarState();
}

class _TtossAppBarState extends State<TtossAppBar> {
  final bool _showRedDot = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      height: TtossAppBar.appBarHeight,
      color: context.appColors.appBarBackground,
      child: Row(children: [
        width10,
        Image.asset(
          "$basePath/icon/toss.png",
          height: 30,
        ),
        emptyExpanded,
        Image.asset(
          "$basePath/icon/map_point.png",
          height: 30,
        ),
        width10,
        Tap(
          onTap: () {
            // 알림화면으로 이동
            Nav.push(const NotificationScreen());
          },
          child: Stack(
            children: [
              Image.asset(
                "$basePath/icon/notification.png",
                height: 30,
              ),
              if (_showRedDot)
                Positioned.fill(
                    child: Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 6,
                    height: 6,
                    decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.red),
                  ),
                ))
            ],
          )
              .animate(
                onComplete: (controller) => controller.repeat(),
              )
              .shake(
                duration: 2100.ms,
                hz: 4, // 1초에 3번 흔들도록
              )
              .then()
              .fadeOut(duration: 1000.ms), // 흔들린 후 사라지도록
        ),
      ]),
    );
  }
}
