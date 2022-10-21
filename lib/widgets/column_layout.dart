import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';
import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class AppColumnLayout extends StatelessWidget {
  final CrossAxisAlignment alignment;
  final String firstText;
  final TextStyle? firstTextStyle;
  final String secondText;
  final TextStyle? secondTextStyle;
  const AppColumnLayout({Key? key, required this.firstText, required this.secondText, required this.alignment, this.firstTextStyle, this.secondTextStyle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(firstText, style: firstTextStyle ?? Styles.headLineStyle3),
        Gap(AppLayout.getHeight(5)),
        Text(secondText, style: secondTextStyle ?? Styles.headLineStyle4),
      ],
    );
  }
}
