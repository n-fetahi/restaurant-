import 'package:flutter/material.dart';

import '../screan/Home.dart';
import '../screan/cotegories.dart';
import 'Navigators.dart';

void BootomBarSwitch(int index,BuildContext context){

    switch(index){
      case 0: pushNavigator(Home(), context);break;
      case 1: pushNavigator(Categories(), context);break;
      case 2: pushNavigator(Home(), context);break;
      case 3: pushNavigator(Home(), context);break;
    }
}