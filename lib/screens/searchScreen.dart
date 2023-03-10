import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket/screens/widget/icon_text_widget.dart';
import 'package:ticket/util/app_layout.dart';
import 'package:ticket/util/style.dart';

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
          AppIconText(icon: Icons.flight_takeoff_rounded, text: "Departure",),
          Gap(AppLayout.getHeight(15)),
          AppIconText(icon: Icons.flight_land_rounded, text: "Arrival",),
          Gap(AppLayout.getHeight(25)),
          Container(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(12), vertical: AppLayout.getHeight(20)),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                color: Color(0xD91130CE)
            ),
            child: Center(child: Text("Find Tickets", style: Styles.textStyle.copyWith(color: Colors.white),)),
          ),
          Gap(AppLayout.getHeight(25)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Upcoming Flights", style: Styles.headLineStyle2,),
              InkWell(
                onTap: (){
                  print("object");
                },
                child: Text("View all", style: Styles.textStyle.copyWith(color: Styles.primaryColor),),
              )
            ],
          ),
          Gap(AppLayout.getHeight(25)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: AppLayout.getHeight(400),
                  width: size.width*0.42,
                  padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(12), vertical: AppLayout.getHeight(12)),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppLayout.getHeight(20)),
                      color: Colors.white
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 150,
                        decoration: BoxDecoration(
                            color: Styles.primaryColor,
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(fit: BoxFit.cover, image: AssetImage("images/sit.jpg"))
                        ),
                        padding: EdgeInsets.all(16),
                      ),
                      Text("Upcoming Flights", style: Styles.headLineStyle2,),
                    ],
                  )),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width*0.44,
                        height: AppLayout.getHeight(200),
                        padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(12), vertical: AppLayout.getHeight(20)),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                            color: Color(0xFF3AB8B8),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Discount\nfor survey", style: Styles.headLineStyle2.copyWith(color: Colors.white),),
                            Gap(AppLayout.getHeight(10)),
                            Text("Take the survey about our services and get discount", style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                          ],
                        ),
                      ),
                      Positioned(
                        right: -45,
                        top: -40,
                        child: Container(
                          padding: EdgeInsets.all(AppLayout.getHeight(30)),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                              border: Border.all(width: 18, color: Color(0xFF189999)),
                            color: Colors.transparent
                          ),
                        ),
                      )
                    ],
                  ),
                  Gap(AppLayout.getHeight(15)),
                  Container(
                    width: size.width*0.44,
                    height: AppLayout.getHeight(200),
                    padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(12), vertical: AppLayout.getHeight(20)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                      color: Color(0xFF3AB8B8),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Discount\nfor survey", style: Styles.textStyle.copyWith(color: Colors.white),),
                        Text("Take the survey about our services and get discount", style: Styles.textStyle.copyWith(color: Colors.white),),
                      ],
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
