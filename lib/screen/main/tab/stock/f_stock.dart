import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_image_button.dart';
import 'package:flutter/material.dart';

class StockFragment extends StatefulWidget {
  const StockFragment({super.key});

  @override
  State<StockFragment> createState() => _StockFragmentState();
}

class _StockFragmentState extends State<StockFragment> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: CustomScrollView(
        // sliver 사용위해서 사용
        slivers: [
          SliverAppBar(
            //backgroundColor: Colors.black,
            actions: [
              ImageButton(
                imagePath: '$basePath/icon/stock_search.png',
                onTap: () {
                  //Nav.push(const StockSearchScreen());
                  context.showSnackbar("검색");
                },
              ).p(10),
              ImageButton(
                imagePath: '$basePath/icon/stock_calendar.png',
                onTap: () {
                  //Nav.push(const StockSearchScreen());
                  context.showSnackbar("캘린더");
                },
              ).p(10),
              ImageButton(
                imagePath: '$basePath/icon/stock_settings.png',
                onTap: () {
                  //Nav.push(const StockSearchScreen());
                  context.showSnackbar("세팅");
                },
              ).p(10),
            ], // 위젯들을 넣어줌
          )
        ],
      ),
    );
  }
}
