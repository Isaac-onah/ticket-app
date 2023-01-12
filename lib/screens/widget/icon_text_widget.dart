import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket/util/app_layout.dart';

class AppIconText extends StatelessWidget {
  final IconData icon;
  final String text;
  const AppIconText({Key? key, required this.icon, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(12), vertical: AppLayout.getHeight(12)),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
          color: Colors.white
      ),
      child: Row(
        children: [
          Icon(icon),
          Gap(AppLayout.getWidth(10)),
          Text(text),
        ],
      ),
    );
  }
}
