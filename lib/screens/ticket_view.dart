import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket/screens/widget/thicker_container.dart';
import 'package:ticket/util/app_layout.dart';
import 'package:ticket/util/style.dart';


class TicketView extends StatelessWidget {
  const TicketView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
        width: size.width,
        height: 200,
      child: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFF526799),
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(21), topRight: Radius.circular(21), ),
              ),
              padding: EdgeInsets.all(16),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("NYC", style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                      Gap(5),
                      Text("London", style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                    ],
                  ),
                  Spacer(),
                  Expanded(
                    child: Row(
                      children: [
                        ThickContainer(),
                        Expanded(
                            child: Stack(
                              children: [
                                SizedBox(
                                  height: 24,
                                  child: LayoutBuilder(
                                    builder: (BuildContext context, BoxConstraints constraints){
                                      print("object${constraints.constrainWidth()}");
                                      return Flex(
                                        direction: Axis.horizontal,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      mainAxisSize: MainAxisSize.max,
                                      children:
                                        List.generate((constraints.constrainWidth()/6).floor(), (index) => SizedBox(
                                            width: 3, height:1, child: DecoratedBox(decoration: BoxDecoration(
                                            color: Colors.white
                                        ))
                                        ),

                                        ),
                                      );
                                    },
                                  ),
                                ),
                                Center(child: Transform.rotate(angle:1.5, child: Icon(Icons.local_airport_outlined, color: Colors.white,))),
                              ],
                            )
                        ),
                        ThickContainer(),
                      ],
                    ),
                  ),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("LDN", style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                      Gap(5),
                      Text("London", style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color:Styles.orangeColor, //const Color(0xFF526799),
              ),
              child: Row(
                children: [
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(decoration: BoxDecoration(
                        color: Styles.bgColor, borderRadius: const BorderRadius.only(topRight: Radius.circular(21), bottomRight: Radius.circular(21), ),
                    ))),
                  Expanded(child: LayoutBuilder(
                    builder: (BuildContext context, BoxConstraints constraints){
                      print("object${constraints.constrainWidth()}");
                      return Flex(
                        direction: Axis.horizontal,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children:
                        List.generate((constraints.constrainWidth()/10).floor(), (index) => SizedBox(
                            width: 3, height:1, child: DecoratedBox(decoration: BoxDecoration(
                            color: Styles.bgColor,
                        ))
                        ),

                        ),
                      );
                    },
                  ),),
                  SizedBox(
                      height: 20,
                      width: 10,
                      child: DecoratedBox(decoration: BoxDecoration(
                        color: Styles.bgColor, borderRadius: const BorderRadius.only(topLeft: Radius.circular(21), bottomLeft: Radius.circular(21), ),
                      ))),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Styles.orangeColor,
                borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(21), bottomRight: Radius.circular(21), ),
              ),
              padding: EdgeInsets.all(16),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("7 JAN", style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                      Gap(5),
                      Text("Date", style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                    ],
                  ),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("08:00 AM", style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                      Gap(5),
                      Text("Departure Time", style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                    ],
                  ),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("S-23", style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                      Gap(5),
                      Text("Seat Number", style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
