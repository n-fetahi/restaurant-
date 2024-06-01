import 'dart:ffi';

import 'package:flutter/material.dart';

class SizeConfig{

  static late MediaQueryData _mediaQueryData;
  static late double heightScreen;
  static late double widthScreen;
  static double? defultSize;
  static Orientation?_orientation;

  void init (BuildContext context){
    _mediaQueryData =MediaQuery.of(context);
    widthScreen =_mediaQueryData.size.width;
    heightScreen=_mediaQueryData.size.height;
    _orientation = _mediaQueryData.orientation;
  }

}

double getwidthScreen(double inputwidth){

  double widthScreen = SizeConfig.widthScreen;
  return (inputwidth/315)*widthScreen;
}

double getheighScreen(double inputheigh){

  double heighScreen = SizeConfig.heightScreen;
  return (inputheigh/815)*heighScreen;
}
