import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/thick_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketView extends StatefulWidget {
  const TicketView({Key? key}) : super(key: key);

  @override
  State<TicketView> createState() => _TicketViewState();
}

class _TicketViewState extends State<TicketView> {
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child: Column(
          children: [
            /*
            showing the blue part of the card
             */
            Container(
              decoration: const BoxDecoration(
                color: Color(0xFF526799),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(21), topRight: Radius.circular(21))
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("NYC", style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                      Expanded(child: Container()), /// const Spacer() -> same as this
                      ThickContainer(),

                      Expanded(child: Stack( /// use stack to wrap airplane inside, then center it.
                        children: [
                          SizedBox(
                            height: 24,
                            child: LayoutBuilder(
                              builder: (BuildContext context, BoxConstraints constraints) {
                                print("The width is ${constraints.constrainWidth()}");
                                return Flex(
                                  direction: Axis.horizontal,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  mainAxisSize: MainAxisSize.max,
                                  children: List.generate((constraints.constrainWidth()/6).floor(), (index) => SizedBox(
                                    width: 3, height: 1, child: DecoratedBox(decoration: BoxDecoration(
                                      color: Colors.white
                                  ),),
                                  )),
                                );
                              },
                            ),
                          ),
                          Center(child: Transform.rotate(angle: 1.5, child: Icon(Icons.local_airport_rounded, color: Colors.white))),
                        ],
                      )),

                      ThickContainer(),
                      Expanded(child: Container()),
                      Text("LDN", style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text("New-York", style: Styles.headLineStyle4.copyWith(color: Colors.white)),
                      ),
                      Text("8H 30M", style: Styles.headLineStyle4.copyWith(color: Colors.white)),
                      SizedBox(
                        width: 100,
                        child: Text("London", textAlign: TextAlign.end, style: Styles.headLineStyle4.copyWith(color: Colors.white)),
                      )
                    ],
                  )
                ],
              ),
            ),
            /*
            showing the middle part of the card
             */
            Container(
              color: Styles.orangeColor,
              child: Row(
                children: [
                  const SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10)
                        )
                      ),
                    ),
                  ),
                  Expanded(child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
                      return Flex(
                        direction: Axis.horizontal,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: List.generate((constraints.constrainWidth() / 15).floor(), (index) => const SizedBox(
                          height: 1,
                          width: 5,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                                color: Colors.white
                            ),
                          ),
                        )),
                      );
                    },
                    ),
                  )),
                  const SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10)
                          )
                      ),
                    ),
                  )
                ],
              ),
            ),
            /*
            showing the orange part of the card
             */
            Container(
              decoration: BoxDecoration(
                  color: Styles.orangeColor,
                  borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(21), bottomRight: Radius.circular(21))
              ),
              padding: const EdgeInsets.only(top: 10, left: 16, right: 16, bottom: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("1 MAY", style: Styles.headLineStyle3.copyWith(color: Colors.white)),
                          const Gap(5),
                          Text("DATE", style: Styles.headLineStyle4.copyWith(color: Colors.white))
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("08:30 AM", style: Styles.headLineStyle3.copyWith(color: Colors.white)),
                          const Gap(5),
                          Text("Departure Time", style: Styles.headLineStyle4.copyWith(color: Colors.white))
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("23", style: Styles.headLineStyle3.copyWith(color: Colors.white)),
                          const Gap(5),
                          Text("NUMBER", style: Styles.headLineStyle4.copyWith(color: Colors.white))
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
