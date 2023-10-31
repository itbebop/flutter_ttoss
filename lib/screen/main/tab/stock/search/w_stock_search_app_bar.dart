import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/util/app_keyboard_util.dart';
import 'package:fast_app_base/common/widget/w_arrow.dart';
import 'package:fast_app_base/common/widget/w_height_and_width.dart';
import 'package:fast_app_base/common/widget/w_tap.dart';
import 'package:fast_app_base/common/widget/w_text_field_with_delete.dart';
import 'package:flutter/material.dart';
import 'package:nav/nav.dart';

class StockSearchAppBar extends StatelessWidget implements PreferredSize {
  final TextEditingController controller;

  const StockSearchAppBar({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        // appbar의 사이즈를 고정하기 위해서
        height: kToolbarHeight,
        child: Row(
          children: [
            Tap(
              onTap: () => Nav.pop(context),
              child: const SizedBox(
                width: 56,
                height: kToolbarHeight,
                child: Arrow(
                  direction: AxisDirection.left,
                ),
              ),
            ),
            Expanded(
                child: TextFieldWithDelete(
              controller: controller,
              textInputAction: TextInputAction.search, // 키보드 엔터가 검색버튼으로 바뀜
              texthint: '\'커피\'를 검색해보세요',
              onEditingComplete: () {
                debugPrint('검색 확인버튼');
                AppKeyboardUtil.hide(context); // 검색 버튼 누르면 키보드 닫히게
              },
            ).pOnly(top: 6)),
            width20, // controller는 상위에서 선언
          ],
        ),
      ),
    );
  }

  @override
  Widget get child => throw UnimplementedError();

  @override
  Size get preferredSize => const Size(double.infinity, kToolbarHeight);
}
