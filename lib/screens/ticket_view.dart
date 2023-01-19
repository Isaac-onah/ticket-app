import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket/screens/widget/thicker_container.dart';
import 'package:ticket/util/app_layout.dart';
import 'package:ticket/util/style.dart';
import 'package:barcode_widget/barcode_widget.dart';


class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  const TicketView({Key? key, required this.ticket}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
        width: size.width,
        height: AppLayout.getHeight(200),
      child: Container(
        padding: EdgeInsets.all(AppLayout.getHeight(16)),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFF526799),
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(21), topRight: Radius.circular(21), ),
              ),
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(ticket['from']['code'], style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                      Gap(5),
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
                      Text(ticket['to']['code'], style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(ticket['from']['name'], style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                      Text(ticket['flying_time'], style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                      Text(ticket['to']['name'], style: Styles.headLineStyle4.copyWith(color: Colors.white),),
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
                  Expanded(
                    child: LayoutBuilder(
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
                      Text(ticket['date'], style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                      Gap(5),
                      Text("Date", style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                    ],
                  ),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(ticket['departure_time'], style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                      Gap(5),
                      Text("Departure Time", style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                    ],
                  ),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("S-${ticket['number']}", style: Styles.headLineStyle3.copyWith(color: Colors.white),),
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

class TicketDetailsView extends StatelessWidget {
  const TicketDetailsView({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width,
      height: AppLayout.getHeight(600),
      child: Container(
        padding: EdgeInsets.all(AppLayout.getHeight(16)),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(21), topRight: Radius.circular(21), ),
              ),
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('ticket', style: Styles.headLineStyle3.copyWith(color: Colors.black87),),
                      Gap(5),
                      Spacer(),
                      Expanded(
                        child: Row(
                          children: [
                            ThickContain(),
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
                                                color: Styles.primaryColor
                                            ))
                                            ),

                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                    Center(child: Transform.rotate(angle:1.5, child: Icon(Icons.local_airport_outlined, color: Styles.primaryColor,))),
                                  ],
                                )
                            ),
                            ThickContain(),
                          ],
                        ),
                      ),
                      Spacer(),
                      Text('ticket', style: Styles.headLineStyle3.copyWith(color:Colors.black87),),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('icket', style: Styles.headLineStyle4.copyWith(color: Colors.black87),),
                      Text('tietck', style: Styles.headLineStyle4.copyWith(color: Colors.black87),),
                      Text('ticket', style: Styles.headLineStyle4.copyWith(color: Colors.black87),),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(AppLayout.getHeight(6)),
              decoration: BoxDecoration(
                color:Colors.white, //const Color(0xFF526799),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: LayoutBuilder(
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
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              padding: EdgeInsets.all(16),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('ticket', style: Styles.headLineStyle3.copyWith(color: Colors.black87),),
                      Gap(5),
                      Text("Date", style: Styles.headLineStyle4.copyWith(color: Colors.black87),),
                    ],
                  ),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('ticket', style: Styles.headLineStyle3.copyWith(color: Colors.black87),),
                      Gap(5),
                      Text("Departure Time", style: Styles.headLineStyle4.copyWith(color: Colors.black87),),
                    ],
                  ),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("S-", style: Styles.headLineStyle3.copyWith(color: Colors.black87),),
                      Gap(5),
                      Text("Seat Number", style: Styles.headLineStyle4.copyWith(color: Colors.black87),),
                    ],
                  ),
                ],
              ),
            ),
            Container(padding: EdgeInsets.all(AppLayout.getHeight(6)),
              decoration: BoxDecoration(
                color:Colors.white,  //const Color(0xFF526799),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: LayoutBuilder(
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
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              padding: EdgeInsets.all(16),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Flutter DB', style: Styles.headLineStyle3.copyWith(color: Colors.black87),),
                      Gap(5),
                      Text("Passenger", style: Styles.headLineStyle4.copyWith(color: Colors.black87),),
                    ],
                  ),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("5221 364869", style: Styles.headLineStyle3.copyWith(color: Colors.black87),),
                      Gap(5),
                      Text("Passport", style: Styles.headLineStyle4.copyWith(color: Colors.black87),),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(AppLayout.getHeight(6)),
              decoration: BoxDecoration(
                color:Colors.white,  //const Color(0xFF526799),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: LayoutBuilder(
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
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              padding: EdgeInsets.all(16),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('364738 28274478', style: Styles.headLineStyle3.copyWith(color: Colors.black87),),
                      Gap(5),
                      Text("Number of E-ticket", style: Styles.headLineStyle4.copyWith(color: Colors.black87),),
                    ],
                  ),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("B2SG28", style: Styles.headLineStyle3.copyWith(color: Colors.black87),),
                      Gap(5),
                      Text("Booking Code", style: Styles.headLineStyle4.copyWith(color: Colors.black87),),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(AppLayout.getHeight(6)),
              decoration: BoxDecoration(
                color:Colors.white,  //const Color(0xFF526799),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: LayoutBuilder(
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
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              padding: EdgeInsets.all(16),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('***2462', style: Styles.headLineStyle3.copyWith(color: Colors.black87),),
                      Gap(5),
                      Text("Payment Method", style: Styles.headLineStyle4.copyWith(color: Colors.black87),),
                    ],
                  ),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("\$249.99", style: Styles.headLineStyle3.copyWith(color: Colors.black87),),
                      Gap(5),
                      Text("Price", style: Styles.headLineStyle4.copyWith(color: Colors.black87),),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(21), bottomRight: Radius.circular(21), ),
              ),
              child:Container(
                padding: EdgeInsets.all( 15),
                child: ClipRRect(
                  child: BarcodeWidget(
                    barcode: Barcode.code128(),
                    data: 'https://github.com/Isaac-onah',
                    drawText: false,
                    color: Styles.textColor,
                    width: double.infinity,
                    height: 70,

                  ),
                ) ,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TicketViewed extends StatelessWidget {

  const TicketViewed({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width,
      height: AppLayout.getHeight(200),
      child: Container(
        padding: EdgeInsets.all(AppLayout.getHeight(16)),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFF526799),
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(21), topRight: Radius.circular(21), ),
              ),
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('ticket', style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                      Gap(5),
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
                      Text('ticket', style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('ticket', style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                      Text('ticket', style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                      Text('ticket', style: Styles.headLineStyle4.copyWith(color: Colors.white),),
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
                  Expanded(
                    child: LayoutBuilder(
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
                      Text('ticket', style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                      Gap(5),
                      Text("Date", style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                    ],
                  ),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('ticket', style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                      Gap(5),
                      Text("Departure Time", style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                    ],
                  ),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("Sticket", style: Styles.headLineStyle3.copyWith(color: Colors.white),),
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
