import 'package:fetahi_restaurant2/constant/SizeOfConfig.dart';
import 'package:flutter/material.dart';


import '../constant/AppTitle.dart';
import '../constant/BottomBar.dart';
import '../constant/BottomBarSwitch.dart';


class Drink extends StatelessWidget {

  final List<Map>drinkList = [
    {'name': ' آيس لاتيه', 'img': 'assets/drinks/1.jpg','price':'\$ 14'},
    {'name': 'عصائر مشكلـة', 'img':'assets/drinks/2.jpg','price':'\$ 23'},
    {'name': 'شـاي', 'img': 'assets/drinks/3.jpg','price':'\$ 16'},
    {'name': 'لاتيه حار ', 'img': 'assets/drinks/4.jpg','price':'\$ 33'},
    {'name': 'عصائر مشكلـة', 'img': 'assets/drinks/7.jpg','price':'\$ 24'},
    {'name': 'زنجبيـل', 'img': 'assets/drinks/11.jpg','price':'\$ 11'},
    {'name': 'أُريـو', 'img': 'assets/drinks/32.jpg','price':'\$ 25'},
    {'name': 'حليب بالفراولة', 'img': 'assets/drinks/44.jpg','price':'\$ 24'},
    {'name': 'آيس لاتيه', 'img': 'assets/drinks/1.jpg','price':'\$ 14'},
    {'name': 'لاتيه حار ', 'img': 'assets/drinks/4.jpg','price':'\$ 33'},
      ];

  Drink({Key? key}) : super(key: key);

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
              AppTitel('المشروبـات', context),
              Expanded(child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing:16.0 ,
                  mainAxisSpacing: 8.0,
                  children:
                  drinkList.map((Map drink) => buildGestureDetector(drink['name'],
                      drink['price'],drink['img'],context)).toList()
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