import 'dart:developer'as dev;

import 'package:diceapp/constants/colors/app_colors.dart';
import 'package:flutter/material.dart';

import '../data/repositories/math_repos.dart';
import '../widgets/app_bar_widget.dart';
import '../widgets/dice_content_widget.dart';

class DicePage extends StatefulWidget {
  const DicePage({
    Key key,
  }) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int _leftNumber = 2;
  int _rightNumber = 6;
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    dev.log('build ==> ${_count++}');
    return Scaffold(
        backgroundColor:Appcolors.scafolde,
        appBar: const AppBarWidget(),
        body: DiceContentWidget(
          onTap: changeDice,
          leftNumber: _leftNumber,
          rightNumber: _rightNumber,
        ));
  }

  void changeDice() {
    _leftNumber = MathRepos.getRandomNumber();
    _rightNumber = MathRepos.getRandomNumber();
    setState(() {});
  }
}
// OOP - Object Oriented Programming --> Obeyktno orientirovannoe programirovanie
// OOP --> Abstraction, Encapsulation, Inheritance-extends,
// business logic --> method, functions, --> a
// MVVM - Model View View Model
// MVC - Model View Controller
// state management
