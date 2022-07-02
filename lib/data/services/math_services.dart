import 'dart:math';

class MathServices {
  Random random = Random();
  static int getRandomNumber() {
    return Random().nextInt(6) + 1;
  }
}