import 'package:fast_app_base/screen/main/tab/stock/search/search_stock_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'w_popular_search_stock_list.dart';
import 'w_search_history_stock_list.dart';
import 'w_stock_search_app_bar.dart';

class SearchStockScreen extends StatefulWidget {
  const SearchStockScreen({super.key});

  @override
  State<SearchStockScreen> createState() => _SearchStockScreenState();
}

class _SearchStockScreenState extends State<SearchStockScreen> {
  final controller = TextEditingController(); // 변수타입 TextFieldWithDelete는 생성자와 중복되므로 생략해도 됨
  // 예외 발생 Get.find->Get.put으로 변경
  late final searchData = Get.find<SearchStockData>();
  //late final searchData = Get.put(SearchStockData());
  @override
  void initState() {
    // 실무상 controller.data에 좀더 쉽게 접근하기 위한 팁
    // data를 state 전체에서 쓸 수 있는 전역변수로 넣어줌
    // 그걸 받아서 search하도록 함
    Get.put(SearchStockData()); // get.dart import
    // 리스너, 검색창에 입력된 값 받음(컨트롤러에 입력값 있을때마다 수행)
    controller.addListener(() {
      //debugPrint(controller.text);
      searchData.search(controller.text);
    });

    /*
    final data = SearchStockData();
    Get.put(data); // get.dart import
    // 리스너, 검색창에 입력된 값 받음(컨트롤러에 입력값 있을때마다 수행)
    controller.addListener(() {
      //debugPrint(controller.text);
      data.search(controller.text);
    });
    */
    super.initState();
  }

  @override
  void dispose() {
    Get.delete<SearchStockData>(); // <>안에 지우고자 하는 데이터 클래스 타입을 넣어줌
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: StockSearchAppBar(
        controller: controller,
      ),
      body: ListView(
        children: const [
          SearchHistoryStockList(),
          PopularSearchStockList(),
        ],
      ),
    );
  }
}
