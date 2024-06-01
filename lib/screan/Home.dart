import 'package:fetahi_restaurant2/constant/SizeOfConfig.dart';
import 'package:fetahi_restaurant2/screan/cotegories.dart';
import 'package:flutter/material.dart';

import '../ScreenTest/SignInTest.dart';
import '../constant/Background.dart';
import '../constant/BottomBar.dart';
import '../constant/BottomBarSwitch.dart';
import '../constant/Navigators.dart';
import '../constant/User_Auth.dart';
import '../constant/constant.dart';
import 'SignIn.dart';

class Home extends StatelessWidget {
   Home({Key? key}) : super(key: key);
   final List<Map>appetizerList = [
     {'name': 'حمص وورق عنب', 'img': 'assets/cotegories/Appetizer.jpg','price':30.0},
     {'name': 'سلطة مشكلة', 'img':'assets/appetizer/2.jpg','price':23.0},
     {'name': 'سلطة بالجبن', 'img': 'assets/appetizer/3.jpg','price':16.0},
     {'name': 'سلطة', 'img': 'assets/appetizer/4.jpg','price':33.0},
     {'name': 'اسياخ السلطة', 'img': 'assets/appetizer/5.jpg','price':24.0},
     {'name': 'سلطة فواكه', 'img': 'assets/appetizer/6.jpg','price':11.0},
     {'name': 'سلطة تورتيلا', 'img': 'assets/appetizer/7.jpg','price':12.0},
     {'name': 'سلطة خيار', 'img': 'assets/appetizer/8.jpg','price':30.0},
     {'name': 'سلطة', 'img': 'assets/appetizer/4.jpg','price':33.0},
     {'name': 'اسياخ السلطة', 'img': 'assets/appetizer/5.jpg','price':24.0},
     {'name': 'سلطة فواكه', 'img': 'assets/appetizer/6.jpg','price':11.0},
     {'name': 'سلطة تورتيلا', 'img': 'assets/appetizer/7.jpg','price':25.0},
   ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      bottomNavigationBar: BottomBar(
        BottomNu: 0,
        CallBack: (index) {
          BootomBarSwitch(index,context);
        }
      ),
      backgroundColor: Color(0xA135ECCB),

      appBar: AppBar(
        backgroundColor: Color(0xFF17675C),
        title: Text('Home'),

      ),
      drawer:Builddrawer(),
      body: SafeArea(
          child: Container(
            // decoration: background('assets/shrimps/SouthernShrimpandGrits.jpg'),
            child: Padding(
        padding:EdgeInsets.all(10),
        child: Column(
            children: [DiscountInterface(),
            Expanded(child: Container(
              margin: EdgeInsets.only(top:15 ),
              width:double.infinity ,
              height: double.infinity,
              child: ListView(
                children: [
                  SubListView(title: 'Tuna Dishes', items: appetizerList),
                  SubListView(title: 'Tuna Dishes', items: appetizerList)

                ],
              )

              ),
            ),
        ]
        ),
      ),
          )
        
      ),
    );
  }
}
class Builddrawer extends StatelessWidget {
   Builddrawer({Key? key}) : super(key: key);


  final List<Map>ListTiles=[
    {'icon':Icons.restaurant,'title':'Categories List'},
    {'icon':Icons.search,'title':'Search'},
    {'icon':Icons.shopping_cart,'title':'Catr'},
    {'icon':Icons.settings,'title':'setting'},
    {'icon':Icons.help,'title':'help'},
    {'icon':Icons.accessibility_rounded,'title':'About us'},
    {'icon':Icons.output,'title':'Sing out'},
  ];


  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0xFF208A79),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           UserAccountsDrawerHeader(
             margin: EdgeInsets.zero,
               accountName: Text('Buhisaa AlSharabi'),
               accountEmail:Text('goodluck336@yahoo.com'),
             decoration: BoxDecoration(
               color: Color(0xA1155B4E)
             ),
             currentAccountPicture: CircleAvatar(
               backgroundImage: AssetImage('assets/drinks/1.jpg'),
             ),
             otherAccountsPictures: [Icon(Icons.settings,color: Colors.white,size: 27,),
               Icon(Icons.power_settings_new_rounded,color: Colors.white,size: 27,)],
           ),
           Divider(color: Color(0xFF299D89),thickness: 15,),

           Expanded(child: ListView(
             children:
             ListTiles.map((Map Tile)=>listTile1(Tile['title'],Tile['icon'],
                   context)).toList()


           ),),
         ],
      ),
    );
  }

  Widget listTile1(String title,IconData icon,BuildContext context) {
    return
             ListTile(hoverColor:Colors.white ,
               title: Text(title,
               style: TextStyle(
                 color: Color(0xFFE5E5D8),
                 fontFamily: 'Cario',
                 fontSize: 18,
                 fontWeight: FontWeight.bold,
               ),
               ),
               leading: Icon(icon,color: Color(0xFFE5E5D8),),
               onTap: (){
               if(title=='Sing out'){
                 // User_Auth().signOutwithGoogle();
                 pushNavigator(SignIn(),context);
               }

               },


             );
  }



  }
  
  
  class DiscountInterface extends StatelessWidget {
    const DiscountInterface({Key? key}) : super(key: key);
  
    @override
    Widget build(BuildContext context) {
      return Container(
        width: double.infinity,
        height: getheighScreen(160),
          decoration:BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: [BoxShadow(color: Colors.black12.withOpacity(0.4),
            blurRadius:4,
              offset:const Offset(0,6),

            ),
            ],
          ) ,
        child:Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset('assets/cotegories/Appetizer.jpg',
                  fit: BoxFit.cover,
                  height: double.infinity,
                  width: double.infinity,

                ),

              ),
              Container(
                height: double.infinity,
                width: double.infinity,
                padding: EdgeInsets.only(left:20 ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black12.withOpacity(0.3),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: getheighScreen(50),
                        width: getheighScreen(60),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.vertical(
                            bottom: Radius.circular(20),),
                                  color: Color(0xA128B299),

                          ),
      child: Center(
      child: Text('Specials',
        style: TextStyle(
            fontSize: 12,
            color: Colors.white,
      fontWeight: FontWeight.bold,
        shadows: [BoxShadow(color: Color(0xE4000000),blurRadius: 1,
        offset: Offset(-1,2),
        ),
        ]
      ),
      ),

                        ),
                      ),
                      SizedBox(height:getheighScreen(10) ,),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text('%50 Off',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,
                          color: Colors.white.withOpacity(0.8),
      shadows: [BoxShadow(color: Color(0xA128B299),blurRadius: 1,
      offset: Offset(-1,2),
      ),],


                           ),

                           ),
      Text('On all types of seafood',
      style: TextStyle(

      fontSize: 15,fontWeight: FontWeight.bold,
      color: Colors.white.withOpacity(0.8),
      shadows: [
      BoxShadow(color: Color(0xA128B299),blurRadius: 1,
      offset: Offset(-1,2)),
      ],

      ),
                      ),
                    ],
                ),
],
              ),
      ),
      ],
        ) ,
      );
    }
  }
  

class SubListView extends StatelessWidget {
   SubListView({Key? key, required this.title,required this.items}) : super(key: key);
  String title;
  List<Map> items;


  @override
  Widget build(BuildContext context) {
    return Expanded(child: 
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: Colors.white.withOpacity(0.8),
        ),),
        SizedBox(height: getheighScreen(10),),
        Container(
          margin: EdgeInsets.only(bottom: 20),
          height: getheighScreen(300),
          child: ListView(
            scrollDirection: Axis.horizontal,
               children:

                 items.map((Map e) => buildGestureDetector(e['name'], e['img'], e['price'], context)).toList()
                 // buildGestureDetector('price','assets/tuna/SpicyTunaCakes.jpg',15,context)

          ),
        )
      ],
    ));
  }

  GestureDetector buildGestureDetector(String name,String img,double price,BuildContext context) {
    return GestureDetector(
                 child: Container(
                   width: getwidthScreen(150),
                   margin: EdgeInsets.only(right: 10),
                   padding: EdgeInsets.all(10),
                   decoration: BoxDecoration(
                     color: Color(0x3C070404),
                     borderRadius: BorderRadius.circular(10),
                     boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.25),
                     blurRadius: 4,offset: const Offset(0, 6),),],
                   ),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Expanded(child: ClipRRect(
                         borderRadius: BorderRadius.circular(10.0),
                         child: Image.asset(img,
                         fit: BoxFit.cover,
                         height: double.infinity,
                         width: double.infinity,),
                       ),
                       ),
                       SizedBox(height: getheighScreen(5),),
                       Container(
                         margin: EdgeInsets.only(left: 8),
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text(name,
                             style: TextStyle(
                               fontSize: 13,
                               shadows: [

                               ],
                               color: Color(0xFFF8E561),
                               fontWeight: FontWeight.bold,
                             ),),
                             SizedBox(height: 2,),
                             RichText(text: TextSpan(
                               text: 'Before: ',
                               style: TextStyle(
                                 fontSize: 11,
                                 shadows: [
                                   BoxShadow(color: Color(0xFF000000),
                                     blurRadius: 1,offset: const Offset(-1, 2),)
                                 ],
                                 color: Colors.white,
                                 fontWeight: FontWeight.w500,
                               ),
                               children: [TextSpan(
                                 text: '\$ $price',
                                 style: TextStyle(color: Colors.red,fontSize: 12),

                               ),],
                             ),
                             ),
                             SizedBox(height: 2,),
                             RichText(text: TextSpan(
                               text: 'After : ',
                               style: TextStyle(
                                 fontSize: 11,
                                 shadows: [
                                   BoxShadow(color: Color(0xFF000000),
                                   blurRadius: 1,offset: const Offset(-1, 2),)
                                 ],
                                 color: Colors.white,
                                 fontWeight: FontWeight.w500,
                               ),
                               children: <TextSpan>[
                                 TextSpan(text: '\$ ${price/2}',
                                 style: TextStyle(color: Color(0xFFF8E561),fontSize: 12,))
                               ]
                             )),
                           ],
                         ),
                       )
                     ],
                   ),
                 ),
               );
  }
}

