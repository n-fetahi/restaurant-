import 'dart:ffi';

import 'package:fetahi_restaurant2/constant/SizeOfConfig.dart';
import 'package:flutter/material.dart';

import '../constant/BottomBar.dart';
//import 'package:alsarabi_restorint/constant/BottonBar2.dart';


class BuyItemTest extends StatefulWidget {
   BuyItemTest({Key? key, required this.name, required this.img, required this.parice}) : super(key: key);
  final String name;
  final String img;
  final double parice;

  @override
  State<BuyItemTest> createState() => _BuyItemTestState();
}

class _BuyItemTestState extends State<BuyItemTest> {
  int count=1;
  String addText='';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Color(0xA128B299),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(12),
           child: Column(
            crossAxisAlignment:CrossAxisAlignment.start ,
              children: [
                InkWell(
                  child: Icon(
                    Icons.arrow_back_rounded,
                      size: 30,
                       color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: getheighScreen(30),
                ),
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        blurRadius: 10,
                        offset: const Offset(-3, 8),
                      ),
                    ],
                  ),
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                          child: Image.asset(widget.img,
                          fit:BoxFit.cover ,
                            height: getheighScreen(350),
                            width: double.infinity,
                          ),

                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                         decoration: BoxDecoration(
                           color: Color(0xA128B299),
                           borderRadius: BorderRadius.circular(10)
                         ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Text(widget.name,
                             style: TextStyle(
                               fontWeight: FontWeight.bold,
                               fontSize: 20,
                               color: Color(0xFFFFFFFF),
                                shadows: [
                                 BoxShadow(color: Color(0xFF000000),
                               blurRadius: 10,offset: const Offset(-1, 2),)
                           ]
                             ),),
                             Text('${widget.parice}',
                               style: TextStyle(
                                 fontWeight: FontWeight.bold,
                                 fontSize: 20,
                                 color: Colors.white,
                                   shadows: [
                                     BoxShadow(color: Color(0xFF000000),
                                       blurRadius: 10,offset: const Offset(-1, 2),)
                                   ]

                             ),

                             ),
                           ],

                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: getheighScreen(20),
                ),
                Expanded(child:Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MaterialButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          minWidth: getwidthScreen(10),
                          height: getheighScreen(60),
                          splashColor: Color(0x2196F3FF),
                          color: Color(0x4D000000),
                          onPressed: (){
                            setState((){
                              if(count<=1){
                                count=1;
                              }
                              else{
                                count--;
                              }
                            });

                          },
                          child: Icon(Icons.remove,size: 30,color: Colors.white,),
                        ),
                        Container(
                          width: getwidthScreen(150),
                          child: TextField(
                            textAlign: TextAlign.center,
                            onChanged: (value){},
                            onTap: (){},
                            enabled: false,
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.all(10),
                              hintText: '$count',
                              hintStyle: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                          ),
                        ),
                        MaterialButton(shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),

                        ),
                          minWidth: getwidthScreen(10),
                          height: getheighScreen(60),
                          splashColor: Color(0x2196F3FF),
                          color: Color(0x4D000000),
                          onPressed: (){
                            setState((){
                              count++;
                            });
                          },
                          child: Icon(Icons.add,size: 30,color: Colors.white,),
                        ),

                      ],
                    ),
                    SizedBox(height: getheighScreen(20),
                    ),
                    Container(
                      width: getwidthScreen(200),
                      child: TextField(
                        textAlign: TextAlign.center,
                         onChanged: (value){},
                        onTap: (){},
                        enabled: false,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(10),
                          hintText: '\$ ${widget.parice*count}',
                          hintStyle: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: getheighScreen(20),),
                    Text(addText,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xE8C9C642),
                          shadows: [BoxShadow(color: Colors.black.withOpacity(0.5),
                            offset: Offset(-2,4),
                            blurRadius: 3,
                          )]
                      ),),
                    SizedBox(
                      height: getheighScreen(35),
                    ),
                    MaterialButton(shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),

                    ),
                      color: Color(0xEA17F8CF),
                      minWidth: double.infinity,
                      height: getheighScreen(60),
                      splashColor: Color(0xA128B299),
                      onPressed: (){
                      setState((){
                        addText='Added to the cart successfully';
                      });

                      },
                      child: Text('Add to the cart',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,

                      ),
                      ),
                    ),


                  ],
                ),),
              ],
           ),
        ),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
 