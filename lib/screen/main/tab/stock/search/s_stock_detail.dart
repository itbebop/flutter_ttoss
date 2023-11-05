import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class StockDetailScreen extends StatelessWidget {
  final String name;
  const StockDetailScreen({required this.name, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: name.text.size(20).color(context.appColors.textBadgeText).bold.make(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            '주식 상세'.text.make(),
          ],
        ),
      ),
    );
  }
}
