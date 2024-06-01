import 'dart:ffi';

//import 'package:alsarabi_restorint/constant/SizeOfConfig.dart';
import 'package:flutter/material.dart';
// import 'package:fetahi_restaurant/con';

import '../constant/SizeOfConfig.dart';

//import '../constant/BottomBar2.dart';
// import 'package:alsarabi_restorint/constant/BottonBar2.dart';


class BuyIteme2 extends StatefulWidget {
  const BuyIteme2({Key? key, required this.name, required this.img, required this.price}) : super(key: key);

  final String name;
  final String img;
  final double price;

  @override
  State<BuyIteme2> createState() => _BuyItemeState();
}

class _BuyItemeState extends State<BuyIteme2> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        backgroundColor: Colors.cyan,
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
                  height: getheighScreen(50),
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
                            color: Colors.indigo,
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
                                color: Colors.white,
                              ),),
                            Text('\$ ${widget.price}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white,

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
                          onPressed: (){_incrementCountere();},
                          child: Icon(Icons.remove,size: 30,color: Colors.white,),
                        ),
                        Container(
                          child: Text('1',
                            style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                shadows: [
                                  BoxShadow(color: Color(0x2196F3FF),
                                      blurRadius: 10,offset: const Offset(-1, 2))
                                ]
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
                          onPressed: (

                              ){_incrementCounter();},
                          child: Icon(Icons.add,size: 30,color: Colors.white,),
                        ),
                        // Text(
                        //   '$_counter',
                        //   style: Theme.of(context).textTheme.headline4,
                        // ),
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
                          hintText: '\$ ${widget.price}',
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
                    SizedBox(
                      height: getheighScreen(30),
                    ),
                    MaterialButton(shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),

                    ),
                      minWidth: double.infinity,
                      height: getheighScreen(60),
                      splashColor: Color(0xA646B9A4),
                      onPressed: (){},
                      child: Text('Add to the cart',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: getheighScreen(15),
                    ),
                  ],
                ),),
              ],
            ),
          ),
        ),
        // bottomNavigationBar:BottonBar2()
    );
  }
}

int _counter = 0;
void _incrementCounter() {
  setState(() {

    _counter++;
  });
}

void setState(Null Function() param0) {
}

void _incrementCountere() {
  setState(() {

    _counter--;
  });
}

