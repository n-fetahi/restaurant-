import 'package:fetahi_restaurant2/constant/SizeOfConfig.dart';
import 'package:flutter/material.dart';


import '../ScreenTest/BayItemTest.dart';
import '../constant/AppTitle.dart';
import '../constant/BottomBar.dart';
import '../constant/BottomBarSwitch.dart';
import '../constant/Navigators.dart';


class IceCream extends StatelessWidget {

  final List<Map>iceCreamList = [
    {'name': 'Butter Pecan', 'img': 'assets/icecreams/ButterPecan.jpg','price':12.0},
    {'name': 'Chocolate', 'img':'assets/icecreams/Chocolate.jpg','price':23.0},
    {'name': 'Cookies Cream', 'img': 'assets/icecreams/CookiesCream.jpg','price':16.0},
    {'name': 'Mint Chocolate Chip', 'img': 'assets/icecreams/MintChocolateChip.jpg','price':13.0},
    {'name': 'Strawberry', 'img': 'assets/icecreams/Strawberry.jpg','price':24.0},
    {'name': 'Vanilla', 'img': 'assets/icecreams/Vanilla.jpg','price':11.0},
    {'name': 'Butter Pecan', 'img': 'assets/icecreams/ButterPecan.jpg','price':12.0},
    {'name': 'Chocolate', 'img':'assets/icecreams/Chocolate.jpg','price':23.0},
    {'name': 'Cookies Cream', 'img': 'assets/icecreams/CookiesCream.jpg','price':16.0},
    {'name': 'Mint Chocolate Chip', 'img': 'assets/icecreams/MintChocolateChip.jpg','price':13.0},
    {'name': 'Strawberry', 'img': 'assets/icecreams/Strawberry.jpg','price':24.0},
    {'name': 'Vanilla', 'img': 'assets/icecreams/Vanilla.jpg','price':11.0},   {'name': 'Butter Pecan', 'img': 'assets/icecreams/ButterPecan.jpg','price':12.0},
    {'name': 'Chocolate', 'img':'assets/icecreams/Chocolate.jpg','price':23.0},
    {'name': 'Cookies Cream', 'img': 'assets/icecreams/CookiesCream.jpg','price':16.0},
    {'name': 'Mint Chocolate Chip', 'img': 'assets/icecreams/MintChocolateChip.jpg','price':13.0},
    {'name': 'Strawberry', 'img': 'assets/icecreams/Strawberry.jpg','price':24.0},
    {'name': 'Vanilla', 'img': 'assets/icecreams/Vanilla.jpg','price':11.0},



  ];

  IceCream({Key? key}) : super(key: key);

 // get buildGestureDetector => null;

    @override
    Widget build(BuildContext context) {
      SizeConfig().init(context);
      return Scaffold(
          bottomNavigationBar: BottomBar(
              CallBack: (index) {
                BootomBarSwitch(index,context);
              }
          ),
        backgroundColor: Color(0xFF208A79),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
                children: [
                  AppTitel('Ice Cream', context),
                  Expanded(child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing:16.0 ,
                    mainAxisSpacing: 8.0,
                    children:
                      iceCreamList.map((Map icecream) => buildGestureDetector(icecream['name'],
                        icecream['price'],icecream['img'],context)).toList()
                  ),

                  ),

                ],

            ),
          ),
        ),
      );
    }
    Widget buildGestureDetector(String name,double price,String img,BuildContext context)
    {
      return GestureDetector(
        onTap: (){
          pushNavigator(BuyItemTest(name: name, img: img, parice: price),context);

        },
        child: Container(
          // height: getheighScreen(20),
          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0x861f1f1f),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.25),
              blurRadius: 4,
              offset: const Offset(0, 6),
            ),],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(img,
                  fit: BoxFit.cover,
                  height: getheighScreen(250),
                  width: getwidthScreen(510),
                ),
              ),
              ),
              SizedBox(height: 10,),
              Text(name,style: TextStyle(
                  color: Color(0xFFFFFFFF),fontSize: 17,fontWeight: FontWeight.w800
              ),),
              Text(' $price',style: TextStyle(
                  color: Color(0xFFFFFFFF),fontSize: 15,fontWeight: FontWeight.w800
              ),)
            ],
          ),
        ),
      );
    }
    }