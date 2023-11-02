import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/main/tab/stock/vo/vo_stock.dart';
import 'package:flutter/material.dart';

class StockItem extends StatelessWidget {
  final Stock stock;
  const StockItem(this.stock, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: context.appColors.roundedLayoutBackground,
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(children: [
        Image.asset(stock.stockImagePath, width: 50),
        width20,
        (stock.name)
            .text
            .color(context.appColors.iconButton)
            .size(18)
            .bold
            .make(),
        emptyExpanded,
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // (오늘의 가격 - 전날의 가격) %
            // calculate.percentage(stock) // 계산하는 calculate 객체를 만들어서 사용하는 방법1.(매번 calculate 사용해야함)
            // stock 자체에 % 표시하는 기능 넣음
            (stock.todayPercentageString)
                .text
                .size(20)
                .bold
                .color(stock.getTodayPercentageColor(context))
                .make(),
            height5,
            (stock.yesterdayClosePrice.toComma())
                .text
                .size(14)
                .color(context.appColors.dimmedText)
                .make(),
          ],
        )
      ]),
    );
  }
}
