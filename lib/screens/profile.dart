
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket/screens/ticket_view.dart';
import 'package:ticket/screens/widget/icon_text_widget.dart';
import 'package:ticket/util/app_layout.dart';
import 'package:ticket/util/style.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20), vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Row(
            children: [
                Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(fit: BoxFit.fitHeight , image: AssetImage("images/logo.jpg"))
                ),),
              Gap(AppLayout.getHeight(10)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Book Tickets', style: Styles.headLineStyle.copyWith(fontSize: AppLayout.getWidth(35)),),
                  Gap(AppLayout.getHeight(2)),
                  Text('New-York', style: Styles.headLineStyle.copyWith(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.grey.shade500)),
                ],
              ),
            ],
          ),
          Gap(AppLayout.getHeight(15)),
          TicketDetailsView(),
          TicketViewed()
        ],
      ),
    );
  }
}
