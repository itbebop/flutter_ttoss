import 'package:fast_app_base/common/dart/extension/context_extension.dart';
import 'package:flutter/material.dart';

class RoundedContainer extends StatelessWidget {
  final Widget child;
  final EdgeInsets padding;
  final double radius;
  final Color? backgroundColor;

  const RoundedContainer({
    required this.child,
    super.key,
    this.radius = 20, // optional
    this.backgroundColor, // 바뀔 수도 있으므로 상수 아님 -> nullable로 만듬
    this.padding = const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
          color: backgroundColor ?? context.appColors.roundedLayoutBackground,
          borderRadius: BorderRadius.circular(radius)),
      child: child,
    );
  }
}
