import '../constant/SizeOfConfig.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

Widget ButtonItem(
String imagePath, String buttonName,
Function() onTap,
BuildContext context
){
  SizeConfig().init(context);
  return InkWell(
    onTap: onTap,
    child: Container(
      width: SizeConfig.widthScreen,
      height: 60,
      child: Card(
        //3D
        elevation: 8,
        color: Color(0xFF28B299),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          side: const BorderSide(
            width: 1,
            color: Color(0xFFFFFFFF)
          )
        ),
       child: Row(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           SvgPicture.asset(
             imagePath,
             height: 35,
             width: 35,
           ),
           SizedBox(
             width: 15,
           ),
           Text(
             buttonName,
             style: const TextStyle(
               color: Colors.white,
               fontSize: 17,
             ),
           )
         ],
       ),
      ),
    ),
  );
}