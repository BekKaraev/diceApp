import 'package:diceapp/data/getxData/controller/dice_controller.dart';
import 'package:diceapp/widgets/app_bar_widget.dart';
import 'package:diceapp/widgets/dice_content_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DiceGetXScreen extends StatelessWidget {
  final DiceController _diceController = Get.put(DiceController());
  DiceGetXScreen({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFF5353),
      appBar: const AppBarWidget(),
      body: Obx(() => DiceContentWidget(
            leftNumber: _diceController.leftNumber.value,
            rightNumber: _diceController.rightNumber.value,
            onTap: () {
              _diceController.getRandomNumber();
            },
          )),
    );
  }
}
