import 'package:flutter/material.dart';
import '../screan/Appetizer.dart';
import '../screan/BuyItem.dart';
import '../screan/cotegories.dart';
import '../screan/Drinks.dart';
import '../screan/Home.dart';
import '../screan/IceCream.dart';
import '../screan/Maindishes.dart';
import '../screan/Sweets.dart';

 pushNavigator(pageName,BuildContext context){
  Navigator.push(context,
      MaterialPageRoute(
          builder:(context)=>pageName
      )
  );
}