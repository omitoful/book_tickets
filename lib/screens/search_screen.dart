import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/button_widget.dart';
import 'package:booktickets/widgets/icon_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/double_text_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20), vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text("What are\nyou looking for?", style: Styles.headLineStyle1.copyWith(fontSize: AppLayout.getWidth(35))),
          Gap(AppLayout.getHeight(20)),
          FittedBox(
            child: Container(
              padding: EdgeInsets.all(AppLayout.getHeight(3.5)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getWidth(50)),
                  color: const Color(0xFFF4F6FD)
              ),
              child: Row(
                children: [
                  /// left(airline tickets)
                  Container(
                    width: size.width * 0.44,
                    padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.horizontal(left: Radius.circular(AppLayout.getWidth(50))),
                        color: Colors.white
                    ),
                    child: Center(child: Text("Airline Tickets")),
                  ),
                  /// right(hotels)
                  Container(
                    width: size.width * 0.44,
                    padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.horizontal(right: Radius.circular(AppLayout.getWidth(50))),
                        color: Colors.transparent /// color: const Color(0xFFF4F6FD)
                    ),
                    child: Center(child: Text("Hotels")),
                  )
                ],
              ),
            ),
          ),
          Gap(AppLayout.getHeight(25)),
          const AppIconText(icon: Icons.flight_takeoff_rounded, text: "Departure"),
          Gap(AppLayout.getHeight(20)),
          const AppIconText(icon: Icons.flight_land_rounded, text: "Arrival"),
          Gap(AppLayout.getHeight(25)),
          const AppButton(text: "find tickets", buttonColor: Color(0xD91130CE)),
          Gap(AppLayout.getHeight(40)),
          const AppDoubleTextWidget(bigText: "Upcoming Flights", smallText: "View all"),
          Gap(AppLayout.getHeight(25)),
        ],
      ),
    );
  }
}
