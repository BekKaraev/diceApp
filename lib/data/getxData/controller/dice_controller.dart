import 'package:diceapp/data/repositories/math_repos.dart';
import 'package:get/get.dart';

class DiceController extends GetxController{
 RxInt leftNumber = 2.obs;
  RxInt rightNumber = 6.obs;
  RxInt count = 0.obs;
  void getRandomNumber() {
    leftNumber.value = MathRepos.getRandomNumber();
    rightNumber.value = MathRepos.getRandomNumber();
    count.value++;
  }
} 