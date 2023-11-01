import 'package:flutter/material.dart';

import 'w_popular_search_stock_list.dart';
import 'w_search_history_stock_list.dart';
import 'w_stock_search_app_bar.dart';

class SearchStockFragment extends StatefulWidget {
  const SearchStockFragment({super.key});

  @override
  State<SearchStockFragment> createState() => _SearchStockFragmentState();
}

class _SearchStockFragmentState extends State<SearchStockFragment> {
  final controller =
      TextEditingController(); // 변수타입 TextFieldWithDelete는 생성자와 중복되므로 생략해도 됨

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: StockSearchAppBar(
        controller: controller,
      ),
      body: ListView(
        children: [
          SearchHistoryStockList(),
          PopularSearchStockList(),
        ],
      ),
    );
  }
}
