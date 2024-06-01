import 'package:flutter/material.dart';
// import 'package:fetahi_restaurant/constant/';
// import 'package:food/constant/DefultButton.dart';
// import 'package:food/constant/SizeOfConfig.dart';
// import 'package:food/constant/TextForm.dart';

import '../constant/ButtonItem.dart';
import '../constant/DefultBotton.dart';
import '../constant/MyInkWell.dart';
import '../constant/SizeOfConfig.dart';
import '../constant/TextForm.dart';
import '../screan/Home.dart';


class SignIn extends StatefulWidget {
  SignIn({Key? key}) : super(key: key);
  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  String? email;
  String? password;
  String errorText='';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor:Color(0xA128B299),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(12),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: getheighScreen(20),),
                Text('Sign In',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),),
                SizedBox(height: getheighScreen(60),),
                TextForm(
                  obscureText: false,
                  icon: Icons.email,
                  myKey: TextInputType.emailAddress,
                  lableText: 'Email',
                  validation: (value){},
                  press:(value){
                    email=value;

                  } ,

                ),
                SizedBox(height: getheighScreen(40),),
                TextForm(obscureText: true,
                  icon: Icons.visibility_off,
                  myKey: TextInputType.text,
                  lableText: 'password',
                  validation: (value){},
                  press:(value){

                  password=value;
                  } ,

                ),
                SizedBox(height: getheighScreen(20),),
                Text(errorText,
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          blurRadius: 3,
                          offset: const Offset(1, 3),
                        ),
                      ]
                  ),
                ),
                SizedBox(height: getheighScreen(30),),

                DefultButton('Sign In', (){
                  setState((){
                    if(email==null || password==null){
                      errorText='Some One Field is Empty';
                    }
                    else if(email=='noor@gmail.com' && password=='1234'){
                      Navigator.push
                        (context,MaterialPageRoute(builder: (context){
                        return Home();
                      }));
                    }

                    else{
                      print(errorText);
                      errorText='The Email or Password is wrong';
                    }

                  });
                }),
                SizedBox(height: getheighScreen(30),),
                Text('OR',style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),),
                SizedBox(height: getheighScreen(30),),
                ButtonItem('assets/SvgImg/facebook-svgrepo-com.svg', 'Continue with Facebook', () {}, context),
                SizedBox(height: getheighScreen(30),),
                ButtonItem('assets/SvgImg/google-logo-search-new-svgrepo-com.svg', 'Continue with Google', () {}, context),
                SizedBox(height: getheighScreen(40),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("If you don't have an Account ?",
                      style: TextStyle(
                        color: Color(0xfff8f8f8),
                        fontSize: 18,
                      ),),
                    myInlWell('Sign In',(){
                      Navigator.push
                        (context,MaterialPageRoute(builder: (context){
                        return Home();
                      }));
                    })
                  ],
                )
              ],

            ),
          ),
        ),
      ),
    );
  }
}
