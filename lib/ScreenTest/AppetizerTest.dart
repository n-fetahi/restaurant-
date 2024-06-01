import 'package:fetahi_restaurant2/ScreenTest/BayItemTest.dart';
import 'package:fetahi_restaurant2/constant/Navigators.dart';
import 'package:fetahi_restaurant2/constant/SizeOfConfig.dart';
import 'package:flutter/material.dart';


import '../constant/AppTitle.dart';
import '../constant/BottomBar.dart';
import '../constant/BottomBarSwitch.dart';
import '../constant/constant.dart';


class AppetizerTest extends StatefulWidget {


  AppetizerTest({Key? key}) : super(key: key);

  @override
  State<AppetizerTest> createState() => _AppetizerTestState();
}

class _AppetizerTestState extends State<AppetizerTest> {
  final List<Map>appetizerList = [
    {'name': 'حمص وورق عنب', 'img': 'assets/appetizer/1.jpg','price':30.0},
    {'name': 'سلطة مشكلة', 'img':'assets/appetizer/2.jpg','price':23.0},
    {'name': 'سلطة بالجبن', 'img': 'assets/appetizer/3.jpg','price':16.0},
    {'name': 'سلطة', 'img': 'assets/appetizer/4.jpg','price':33.0},
    {'name': 'اسياخ السلطة', 'img': 'assets/appetizer/5.jpg','price':24.0},
    {'name': 'سلطة فواكه', 'img': 'assets/appetizer/6.jpg','price':11.0},
    {'name': 'سلطة تورتيلا', 'img': 'assets/appetizer/7.jpg','price':12.0},
    {'name': 'سلطة خيار', 'img': 'assets/appetizer/8.jpg','price':30.0},
{'name': 'سلطة', 'img': 'assets/appetizer/4.jpg','price':33.0},
{'name': 'اسياخ السلطة', 'img': 'assets/appetizer/5.jpg','price':24.0},
{'name': 'سلطة فواكه', 'img': 'assets/appetizer/6.jpg','price':11.0},
{'name': 'سلطة تورتيلا', 'img': 'assets/appetizer/7.jpg','price':25.0},
  ];

  // get buildGestureDetector => null;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      bottomNavigationBar: BottomBar(
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
              AppTitel('Appetizer', context),
              Expanded(child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing:12.0 ,
                  mainAxisSpacing:8.0,
                  children:
                  appetizerList.map((Map appetizer) => buildGestureDetector(appetizer['name'],
                      appetizer['price'],appetizer['img'],context)).toList()
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
        pushNavigator(BuyItemTest(img: img,name: name,parice: price,), context);
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