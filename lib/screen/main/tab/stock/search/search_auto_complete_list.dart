import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/main/tab/stock/search/search_stock_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 's_stock_detail.dart';

class SearchAutoCompleteList extends StatelessWidget
    with SearchStockDataProvider {
  // mixin 사용으로 삭제
  //late final searchData = Get.find<SearchStockData>();
  final TextEditingController _controller;
  SearchAutoCompleteList(this._controller, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: searchData.autoCompleteList.length,
      /*
      itemBuilder: ((context, index) =>
            searchData.autoCompleteList[index].stockName.text.make()));
      */
      itemBuilder: (BuildContext context, int index) {
        final stock = searchData.autoCompleteList[index];
        final stockName = stock.name;
        return Tap(
          onTap: () {
            // 각 아이템(주식)을 클릭했을 때 주식의 상세페이지로 이동한다
            Nav.push(StockDetailScreen(name: stockName));
            searchData.addSearchHistory(stock);
            _controller.clear();
          },
          child: Container(
            padding: const EdgeInsets.all(20),
            child: stockName.text.make(),
          ),
        );
      },
    );
  }
}
