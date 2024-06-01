import 'dart:async';

import 'package:fetahi_restaurant2/constant/SizeOfConfig.dart';
import 'package:fetahi_restaurant2/screan/Home.dart';
import 'package:flutter/material.dart';

import '../constant/Navigators.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
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
      backgroundColor: Color(0xFF90D297),
        body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/cotegories/Appetizer.jpg'),
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
                        CircleAvatar(
                          radius: 100,
                          backgroundColor: Colors.white.withOpacity(0.8),
                        ),
                        Image.asset('assets/logo3.png',
                          height: getheighScreen(300),
                          width: getwidthScreen(300),
                        ),
                      ],
                    ),
                    SizedBox(height: getwidthScreen(10),),
                    Text('FETAHI RESTAURANT',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.white,
                        shadows: [BoxShadow(
                          color: Colors.black,
                          offset: Offset(-2,4),
                          blurRadius: 10,
                        )]
                      ),
                    ),
                    SizedBox(height: getwidthScreen(20),),
                    CircularProgressIndicator(
                      backgroundColor: Colors.white,
                      color: Color(0xCA27806D),
                    )
                  ],
                ),

          ),

      )
    );
  }
}
