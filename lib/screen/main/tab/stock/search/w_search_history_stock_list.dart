import 'package:fast_app_base/screen/main/tab/stock/search/search_stock_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class SearchHistoryStockList extends StatefulWidget {
  const SearchHistoryStockList({super.key});

  @override
  State<SearchHistoryStockList> createState() => _SearchHistoryStockListState();
}

class _SearchHistoryStockListState extends State<SearchHistoryStockList>
    with SearchStockDataProvider {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: 65,
        child: Obx(
          () => ListView.builder(
              //가로길이 정해줘야함 -> SizeBox로 감싸고
              scrollDirection: Axis.horizontal,
              itemCount: searchData.searchHistoryList.length,
              itemBuilder: ((context, index) =>
                  searchData.searchHistoryList[index].text.make())),
        ));
  }
}
