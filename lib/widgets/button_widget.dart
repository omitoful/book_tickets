import 'package:flutter/material.dart';
import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class AppButton extends StatelessWidget {
  final String text;
  final Color buttonColor;
  const AppButton({Key? key, required this.text, required this.buttonColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(18), horizontal: AppLayout.getWidth(15)),
      decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(AppLayout.getWidth(10))
      ),
      child: Center(child: Text(text, style: Styles.textStyle.copyWith(color: Colors.white)))
    );
  }
}