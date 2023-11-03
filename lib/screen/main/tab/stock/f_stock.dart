import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_image_button.dart';
import 'package:fast_app_base/screen/main/tab/stock/tab/f_my_stock.dart';
import 'package:fast_app_base/screen/main/tab/stock/tab/f_todays_discovery.dart';
import 'package:flutter/material.dart';

import 'search/s_search_stock.dart';
import 'setting/s_setting.dart';

class StockFragment extends StatefulWidget {
  const StockFragment({super.key});

  @override
  State<StockFragment> createState() => _StockFragmentState();
}

class _StockFragmentState extends State<StockFragment>
    with SingleTickerProviderStateMixin {
  late final TabController tabController =
      TabController(length: 2, vsync: this);
// 아래와 같이 해도 되지만 위가 더 깔끔
// 아래와 같이 한 이유는 this가 _StockFragmentState() 빌드되는 과정이라 안먹음, 그래서 빌드되고 나서 intState에서 처리되도록 한 것
/*
  TabController? tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }
*/
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      // sliver 사용위해서 사용
      slivers: [
        SliverAppBar(
          backgroundColor: context.appColors.roundedLayoutBackground,
          pinned: true, // appbar fixed(when scrolled)
          actions: [
            ImageButton(
              imagePath: '$basePath/icon/stock_search.png',
              onTap: () {
                Nav.push(const SearchStockScreen());
                //context.showSnackbar("검색");
              },
            ),
            ImageButton(
              imagePath: '$basePath/icon/stock_calendar.png',
              onTap: () {
                //Nav.push(const StockSearchScreen());
                context.showSnackbar("캘린더");
              },
            ),
            ImageButton(
              imagePath: '$basePath/icon/stock_settings.png',
              onTap: () {
                Nav.push(const SettingScreen());
                context.showSnackbar("설정");
              },
            ),
          ], // 위젯들을 넣어줌
        ),
        SliverToBoxAdapter(
            child: Column(
          children: [
            title,
            tabBar,
            if (currentIndex == 0)
              const MyStockFragment()
            else
              const TodayDiscoveryFragment(),
            height20,
          ],
        )),
      ],
    );
  }

  Widget get title => Container(
        color: context.appColors.roundedLayoutBackground,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            '토스증권'
                .text
                .size(24)
                .color(context.appColors.iconButton)
                .bold
                .make(),
            width20,
            'S&P 500'
                .text
                .size(13)
                .bold
                .color(context.appColors.lessImportant)
                .make(),
            width10,
            3919.29
                .toComma()
                .text
                .size(13)
                .bold
                .color(context.appColors.plus)
                .make(),
          ],
        ).pOnly(left: 20),
      );
  Widget get tabBar => Container(
        color: context.appColors.roundedLayoutBackground,
        child: Column(
          children: [
            TabBar(
              onTap: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
              labelStyle:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              labelPadding: const EdgeInsets.symmetric(vertical: 20),
              indicatorPadding:
                  const EdgeInsets.symmetric(horizontal: -20), // 왜 다른지?
              indicatorColor: Colors.white,
              controller: tabController, // nullable이지만 만들지 않아서 에러남
              tabs: [
                '내 주식'.text.make(),
                '오늘의 발견'.text.make(),
              ],
            ),
            const Line(),
          ],
        ),
      );
}
