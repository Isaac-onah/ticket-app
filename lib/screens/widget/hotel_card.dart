import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket/screens/widget/thicker_container.dart';
import 'package:ticket/util/app_layout.dart';
import 'package:ticket/util/style.dart';


class HotelView extends StatelessWidget {

  final Map<String, dynamic> hotel;
  const HotelView({Key? key, required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width*0.5,
      height: 300,
      padding: EdgeInsets.symmetric(horizontal: 13, vertical: 13),
      margin: EdgeInsets.only(right: 17, top: 5),
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(24)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 150,
            decoration: BoxDecoration(
              color: Styles.primaryColor,
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(fit: BoxFit.cover, image: AssetImage("images/${hotel['image']}"))
            ),
            padding: EdgeInsets.all(16),
          ),
          const Gap(10),
          Text(hotel['place'], style: Styles.headLineStyle2.copyWith(color: Styles.kakiColor),),
          const Gap(5),
          Text(hotel['destination'], style: Styles.headLineStyle3.copyWith(color: Colors.white),),
          const Gap(8),
          Text(
            '\$${hotel['price']}', style: Styles.headLineStyle.copyWith(color: Styles.kakiColor),)
        ],
      ),
    );
  }
}
