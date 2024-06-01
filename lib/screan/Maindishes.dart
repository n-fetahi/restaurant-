import 'package:fetahi_restaurant2/constant/SizeOfConfig.dart';
import 'package:flutter/material.dart';


import '../constant/AppTitle.dart';
import '../constant/BottomBar.dart';
import '../constant/BottomBarSwitch.dart';


class maindishes extends StatelessWidget {

  final List<Map>maindishesList = [
    {'name': 'كبسة', 'img': 'assets/main/1.jpg','price':'\$ 30'},
    {'name': 'بطاطس بالجبن', 'img':'assets/main/2.jpg','price':'\$ 23'},
    {'name': 'سوشي', 'img': 'assets/main/3.jpg','price':'\$ 16'},
    {'name': 'محشي', 'img': 'assets/main/6.jpg','price':'\$ 33'},
    {'name': 'باستا', 'img': 'assets/main/7.jpg','price':'\$ 24'},
    {'name': 'ريش', 'img': 'assets/main/8.jpg','price':'\$ 11'},
    {'name': 'روبيان', 'img': 'assets/main/9.jpg','price':'\$ 25'},
    {'name': 'كبسة', 'img': 'assets/main/1.jpg','price':'\$ 30'},

    {'name': 'سوشي', 'img': 'assets/main/3.jpg','price':'\$ 16'},
    {'name': 'محشي', 'img': 'assets/main/6.jpg','price':'\$ 33'},
  ];

  maindishes({Key? key}) : super(key: key);

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
      backgroundColor: Colors.black12,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              AppTitel('الطبق الرئيسـي', context),
              Expanded(child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing:16.0 ,
                  mainAxisSpacing: 8.0,
                  children:
                  maindishesList.map((Map maindishes) => buildGestureDetector(maindishes['name'],
                      maindishes['price'],maindishes['img'],context)).toList()
              ),

              ),

            ],

          ),
        ),
      ),
    );
  }
  Widget buildGestureDetector(String name,String price,String img,BuildContext context)
  {
    return GestureDetector(
      onTap: (){},
      child: Container(
        height: getheighScreen(20),
        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        margin: EdgeInsets.only(bottom: 25),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xE2FFFFFF),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [BoxShadow(color: Colors.white.withOpacity(0.25),
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
                color: Color(0xFF000000),fontSize: 17,fontWeight: FontWeight.w800
            ),),
            Text(' $price',style: TextStyle(
                color: Color(0xFF000000),fontSize: 15,fontWeight: FontWeight.w800
            ),)
          ],
        ),
      ),
    );
  }
}