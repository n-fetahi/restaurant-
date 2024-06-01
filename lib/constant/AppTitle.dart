import 'package:flutter/material.dart';
import '../screan/Appetizer.dart';

Widget AppTitel(String title, BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      GestureDetector(
        child: Icon(
          Icons.arrow_back, color: Colors.white, size: 30,),
        onTap: ()
        {Navigator.pop(context);
        }
      ),
      Center(
        child: Text(title, style: TextStyle(
          color: Colors.white,
          fontSize: 40,
          fontWeight: FontWeight.bold
        ),),
      ),
      SizedBox(height: 20),

    ],
  );
}