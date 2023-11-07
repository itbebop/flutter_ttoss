import 'package:animations/animations.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/dart/extension/datetime_extension.dart';
import 'package:fast_app_base/screen/main/tab/stock/search/popular_stock_dummy.dart';
import 'package:fast_app_base/screen/main/tab/stock/search/s_stock_detail.dart';
import 'package:flutter/material.dart';
import 'w_popular_stock_item.dart';

class PopularSearchStockList extends StatelessWidget {
  const PopularSearchStockList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.appColors.appBarBackground,
      child: Column(
        children: [
          Row(
            children: [
              "인기 검색".text.bold.make(),
              emptyExpanded,
              "오늘 ${DateTime.now().formattedDate} 기준".text.size(12).make(),
            ],
          ),
          height20,
          ...popularStocks.mapIndexed(
            (element, index) => // 애니메이션 시작
                OpenContainer<bool>(
              //open/close color가 white로 지정되어있음
              openColor: context.appColors.appBarBackground,
              closedColor: context.appColors.appBarBackground,
              openBuilder: (BuildContext context, VoidCallback _) {
                return StockDetailScreen(name: element.name);
              },
              closedBuilder: (BuildContext context, VoidCallback _) {
                return PopularStockItem(stock: element, number: index + 1);
              },
              tappable: true, // closeBuilder가 자동으로 tapping이 될지 여부
            ),
          )
        ],
      ).pSymmetric(h: 20),
    );
  }
}
