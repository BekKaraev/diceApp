import 'package:diceapp/constants/colors/app_colors.dart';
import 'package:diceapp/constants/text_styles/app_text_styles.dart';
import 'package:flutter/material.dart';
import '../constants/text/app_text.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor:Appcolors.AppBar,
      title: Text(
        AppTexts.homework.toUpperCase(),
        style: AppTextStyles.text,
      ),
      centerTitle: true,
      elevation: 0.0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}