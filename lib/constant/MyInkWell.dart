import 'package:flutter/material.dart';

Widget myInlWell(String text,Function() press){
  return InkWell(
    child: Text(text
    ,style: TextStyle(
        fontWeight: FontWeight.w700,
        color: Color(0xFF3FEFCE),
        fontSize: 20
      ),
    ),
    onTap: press,
  );
}