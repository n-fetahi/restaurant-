import '../constant/SizeOfConfig.dart';

import 'package:flutter/material.dart';
import '../constant/constant.dart';
//import 'package:alsarabi_restorint/constant/BuyIteme';

class  BottomBar extends StatelessWidget {
  const  BottomBar({Key? key, this.BottomNu, this.CallBack}) : super(key: key);

  final int? BottomNu;
  final Function? CallBack;



  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    int index;
    final bottoms = [
      Icons.home_filled,
      Icons.restaurant,
      Icons.shopping_cart,
      Icons.search,

    ];
    return Container(

      color:Color(0xFF0D342E),
        child: SizedBox(
          width: SizeConfig.widthScreen,
          height: getheighScreen(60),
            child:ListView.separated(scrollDirection: Axis.horizontal,

            itemBuilder: (context,index)=>GestureDetector(
                  child: Container(
                  width: (SizeConfig.widthScreen-40)/4,
              decoration:BottomNu==index?const BoxDecoration(
                border: Border(
                  bottom : borderStyle,
                  top:borderStyle,
                  left: borderStyle,
                    right:borderStyle,
                )
              ):null,
                child: Icon(
                  bottoms[index],
                  size: BottomNu==index ? 35 : 30,
                  color: BottomNu == index ? Color(0xCA3CFFD8):Color(0xFFFFFFFF) ,

                ),
            ),
      onTap:() =>CallBack !(index),
            ),
           separatorBuilder:(context,index )=>const SizedBox(
    width: 5,

    ) ,
    itemCount: bottoms.length,
    ),
        ),
    );
  }
}
