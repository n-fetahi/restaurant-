import 'package:fetahi_restaurant2/constant/constant.dart';
import 'package:fetahi_restaurant2/screan/Drinks.dart';
import 'package:fetahi_restaurant2/screan/Home.dart';
import 'package:fetahi_restaurant2/screan/IceCream.dart';
import 'package:fetahi_restaurant2/screan/Maindishes.dart';
import 'package:fetahi_restaurant2/screan/Sweets.dart';
import 'package:flutter/material.dart';
import '../ScreenTest/AppetizerTest.dart';
import '../constant/AppTitle.dart';
import 'package:fetahi_restaurant2/constant/SizeOfConfig.dart';
import 'package:fetahi_restaurant2/screan/Appetizer.dart';

import '../constant/BottomBar.dart';
import '../constant/BottomBarSwitch.dart';
import '../constant/Navigators.dart';


class Categories extends StatefulWidget {

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  final List<Map>categories = [
    {'name': 'Appetizer', 'img': 'assets/cotegories/Appetizer.jpg','index':0},
    {'name': 'Main dishes', 'img': 'assets/cotegories/Main dishes.jpg','index':1},
    {'name': 'Drinks', 'img':'assets/cotegories/Drinks.jpg','index':2},
    {'name': 'Sweets', 'img': 'assets/cotegories/Sweets.jpg','index':3},
    {'name': 'Ice cream', 'img': 'assets/cotegories/Ice cream.jpg','index':4},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomBar(
        BottomNu: 1,
        CallBack: (index){
          BootomBarSwitch(index,context);
        },
      ),
      backgroundColor: Color(0xCA27806D),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
              children: [
                AppTitle('الأصناف', context),
                Expanded(child: ListView(
                  children:

                  categories.map((Map title) =>
                      buildGestureDetector(
                          title['name'], title['img'],title['index'], context)).toList(),
                )
                )

              ]
          ),
        ),
      ),


    );
  }

  Column AppTitle(String s,BuildContext context) {
    return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    child: Icon(
                      Icons.arrow_back, color: Colors.white, size: 30,),
                  ),
                  Center(
                    child: Text('Cotegories', style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                    ),),
                  ),
                  SizedBox(height: 20),

                ],
              );
  }

  Widget buildGestureDetector(String name, String img,var index, BuildContext context) {
    return GestureDetector(
      onTap:  () {

        switch (index) {
          case 0:
            pushNavigator(Appetizer(),context);
            break;
          case 1:
            pushNavigator(maindishes(),context);
            break;
          case 2:
            pushNavigator(Drink(),context);
            break;
          case 3:
            Navigator.push(context, MaterialPageRoute(builder:(context)=>sweets()));
            break;
          case 4:
            Navigator.push(context, MaterialPageRoute(builder:(context)=>IceCream()));
            break;

        };
      },

      child: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(bottom: 25),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0x861f1f1f),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.25),
              blurRadius: 4,
              offset: const Offset(0, 6)
          ),

          ],

        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(img,
                fit: BoxFit.cover,
                height: 250,
                width: 510,),


            ),
            SizedBox(height: 10,),
            Text(name, style: TextStyle(
              color: Color(0xFFF8F8F8), fontSize: 22,fontWeight: FontWeight.bold
            ))
          ],

        ),
      ),
    );
  }
}



