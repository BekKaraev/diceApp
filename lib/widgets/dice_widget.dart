import 'package:flutter/material.dart';

class DiceWidget extends StatelessWidget {
  final String diceNumber;
  final void Function() onTap;
  const DiceWidget({Key key, this.diceNumber,this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Image.asset('images/dice$diceNumber.png'),
      ),
    );
  }
}
