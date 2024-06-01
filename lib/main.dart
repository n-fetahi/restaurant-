
import 'package:fetahi_restaurant2/ScreenTest/SignInTest.dart';
import 'package:fetahi_restaurant2/ScreenTest/SignUpTest.dart';
import 'package:fetahi_restaurant2/screan/Appetizer.dart';
import 'package:fetahi_restaurant2/screan/BuyItem.dart';
import 'package:fetahi_restaurant2/screan/Drinks.dart';
import 'package:fetahi_restaurant2/screan/Home.dart';
import 'package:fetahi_restaurant2/screan/IceCream.dart';
import 'package:fetahi_restaurant2/screan/Maindishes.dart';
import 'package:fetahi_restaurant2/screan/SignIn.dart';
import 'package:fetahi_restaurant2/screan/SplashScreen.dart';
import 'package:fetahi_restaurant2/screan/Sweets.dart';
import 'package:fetahi_restaurant2/screan/cotegories.dart';
import 'package:flutter/material.dart';
import 'package:fetahi_restaurant2/screan/viewUsers.dart';
// import 'package:fetahi_restaurant/SplashScreenView.dart';

import 'ScreenTest/spalesh.dart';
import 'constant/BottomBar.dart';

// import 'package:firebase_core/firebase_core.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp( );
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:SignIn(),
    );
  }
}
