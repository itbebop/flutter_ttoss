import 'package:after_layout/after_layout.dart';
import 'package:fast_app_base/common/cli_common.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/main/s_main.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with AfterLayoutMixin {
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    // initState가 아니라 여기에 넣어야
    delay(() {
      Nav.clearAllAndPush(const MainScreen()); // push 대신(back막기)
    }, 1500.ms);
  }

  @override
  void initState() {
    //initState함수에서는 값만 변경해야지 화면 변경 등 하면 crash날 수 있다
    /*
    delay(
      () {
        Nav.clearAllAndPush(const MainScreen()); // push 대신(back막기)
      },
      1500.ms,
      //Duration(milliseconds: 1500)
    ); //1.5초
    */
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        "assets/image/splash/splash.png",
        width: 192,
        height: 192,
      ),
    );
  }
}
