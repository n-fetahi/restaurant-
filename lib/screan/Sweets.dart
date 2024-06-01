import 'package:fetahi_restaurant2/constant/SizeOfConfig.dart';
import 'package:flutter/material.dart';


import '../constant/AppTitle.dart';
import '../constant/BottomBar.dart';
import '../constant/BottomBarSwitch.dart';


class sweets extends StatelessWidget {

  final List<Map>sweetsList = [
    {'name': 'كب كيك', 'img': 'assets/swiet/1.jpg','price':'\$ 30'},
    {'name': 'بسبوسة', 'img':'assets/swiet/2.jpg','price':'\$ 23'},
    {'name': 'كيك مشكل', 'img': 'assets/swiet/3.jpg','price':'\$ 16'},
    {'name': 'حلا', 'img': 'assets/swiet/4.jpg','price':'\$ 33'},
    {'name': 'كنافة', 'img': 'assets/swiet/5.jpg','price':'\$ 24'},
    {'name': 'بقلاوة', 'img': 'assets/swiet/6.jpg','price':'\$ 11'},
    {'name': 'كيك اللوتس', 'img': 'assets/swiet/7.jpg','price':'\$ 25'},
    {'name': 'كيكة الشوكلاتة', 'img': 'assets/swiet/8.jpg','price':'\$ 30'},
    {'name': 'كب كيك', 'img': 'assets/swiet/1.jpg','price':'\$ 30'},
    {'name': 'بسبوسة', 'img':'assets/swiet/2.jpg','price':'\$ 23'},
    {'name': 'كيك مشكل', 'img': 'assets/swiet/3.jpg','price':'\$ 16'},
    {'name': 'حلا', 'img': 'assets/swiet/4.jpg','price':'\$ 33'},
    {'name': 'كنافة', 'img': 'assets/swiet/5.jpg','price':'\$ 24'},
    {'name': 'بقلاوة', 'img': 'assets/swiet/6.jpg','price':'\$ 11'},
  ];

  sweets({Key? key}) : super(key: key);

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
              AppTitel('الحلويات', context),
              Expanded(child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing:16.0 ,
                  mainAxisSpacing: 8.0,
                  children:
                  sweetsList.map((Map sweets) => buildGestureDetector(sweets['name'],
                      sweets['price'],sweets['img'],context)).toList()
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