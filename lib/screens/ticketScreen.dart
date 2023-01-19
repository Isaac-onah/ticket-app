
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket/screens/ticket_view.dart';
import 'package:ticket/screens/widget/icon_text_widget.dart';
import 'package:ticket/util/app_layout.dart';
import 'package:ticket/util/style.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20), vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text('What are \nyou looking for?', style: Styles.headLineStyle.copyWith(fontSize: AppLayout.getWidth(35)),),
          Gap(AppLayout.getHeight(25)),
          FittedBox(
            child: Container(
              padding: const EdgeInsets.all(3.5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(50)),
                  color: const Color(0xFFF4F6FD)
              ),
              child: Row(
                children: [
                  /* Airline ticket*/
                  Container(
                    width: size.width*.44,
                    padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.horizontal(left:Radius.circular(AppLayout.getHeight(50))),
                        color: Colors.white
                    ),
                    child: Center(child: Text('Airline Tickets')),
                  ),
                  /* hotels ticket*/
                  Container(
                    width: size.width*.44,
                    padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.horizontal(right:Radius.circular(AppLayout.getHeight(50))),
                    ),
                    child: Center(child: Text('Hotels Tickets')),
                  )
                ],
              ),
            ),
          ),
          Gap(AppLayout.getHeight(20)),
          TicketDetailsView(),
          TicketViewed()
        ],
      ),
    );
  }
}
