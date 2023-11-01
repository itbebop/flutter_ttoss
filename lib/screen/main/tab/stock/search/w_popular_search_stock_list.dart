import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/dart/extension/datetime_extension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PopularSearchStockList extends StatelessWidget {
  const PopularSearchStockList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            "인기 검색".text.bold.make(),
            emptyExpanded,
            "오늘 ${DateTime.now().formattedDate} 기준".text.size(12).make(),
          ],
        ).pSymmetric(h: 20),
        height20,
      ],
    );
  }
}
