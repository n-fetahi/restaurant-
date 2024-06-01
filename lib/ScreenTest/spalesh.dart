import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fetahi_restaurant2/constant/SizeOfConfig.dart';
import 'package:fetahi_restaurant2/screan/Home.dart';
import 'package:fetahi_restaurant2/constant/Navigators.dart';
class spalsh extends StatefulWidget {
  const spalsh({Key? key}) : super(key: key);

  @override
  State<spalsh> createState() => _spalshState();

}

class _spalshState extends State<spalsh> {
  @override
  void tState() {
    super.initState();

    Timer(
        Duration(seconds: 5),
            (){pushNavigator(Home(),context);}
    );

  }
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(

      backgroundColor: Color(0xff90d297),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/shrimps/PartyShrimp.jpg'),
            fit: BoxFit.cover,
            opacity: 0.7,

          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.bottomCenter,
                children: [

                  Image.asset('assets/appetizer/1.jpg',
                    height: getheighScreen(40),
                    width: getwidthScreen(400),)
                ],
              ),
              // SizedBox(height: getWidthScreen(10),),
              Text('Bisho',
                style: TextStyle(

                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    shadows: [BoxShadow(
                      color: Colors.black,
                      offset: Offset(-2,4),
                      blurRadius: 10,


                    )]
                ),),
              SizedBox(height: getwidthScreen(20),),
              CircularProgressIndicator(
                backgroundColor: Colors.white,
                color: Color(0XCA27806D),
              )
            ],
          ),
        ),
      ),
    );
  }
}
