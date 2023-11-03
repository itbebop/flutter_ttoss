import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_round_button.dart';
import 'package:fast_app_base/common/widget/w_rounded_container.dart';
import 'package:flutter/material.dart';
import 'package:nav/dialog/dialog.dart';
import 'package:nav/enum/enum_nav_ani.dart';

class NumberDialog extends DialogWidget<int> {
  NumberDialog({super.key, super.animation = NavAni.Fade, super.barrierDismissible = false});

  @override
  DialogState<NumberDialog> createState() => _NumberDialogState();
}

class _NumberDialogState extends DialogState<NumberDialog> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RoundedContainer(
              child: Column(
            children: [
              '숫자를 입력해주세요'.text.make(),
              TextField(
                controller: controller,
                keyboardType: TextInputType.number,
              ),
              height20,
              RoundButton(
                height: 30,
                width: 30,
                text: '완료',
                onTap: () {
                  final text = controller.text;
                  int number = int.parse(text); // String타입 객체를 int로 변환
                  widget.hide(number); // 여기서(Number..State) widget은 부모(NumberDialog)
                  // hide()면 null을 넘기는 것
                },
              )
            ],
          ))
        ],
      ),
    );
  }
}
