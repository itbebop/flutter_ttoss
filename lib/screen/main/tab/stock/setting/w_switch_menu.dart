import 'package:fast_app_base/common/common.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'w_os_swtich.dart';

class SwitchMenu extends StatelessWidget {
  final String title;
  final bool isOn;
  //final void Function(bool isOn) onTap;
  final ValueChanged<bool> onTap; // ValueChanged<bool> -> function을 의미?

  const SwitchMenu(this.title, this.isOn, {super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        title.text.color(context.appColors.textBadgeText).size(20).bold.make(),
        emptyExpanded,
        OsSwitch(value: isOn, onChanged: onTap), // Os에 따라서 다른 디자인 적용
        //CupertinoSwitch(value: isOn, onChanged: onTap), //ios 디자인 스위치
        //Switch(value: isOn, onChanged: onTap),// 기본 and의 material 디자인 스위치
      ],
    ).p20();
  }
}
