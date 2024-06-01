// import 'dart:convert';
//
// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:google_sign_in/google_sign_in.dart';
// import 'package:fetahi_restaurant2/ScreenTest/SignInTest.dart';
// import 'package:fetahi_restaurant2/constant/Navigators.dart';
// import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
// import 'package:http/http.dart' as http;
// import '../screan/Home.dart';
//
// class User_Auth{
//
//   signInWithEmailAndPass( TextEditingController emailControll
//       ,TextEditingController passwordControll
//       , GlobalKey<FormState> _formKey
//       ,BuildContext context) async{
//
//     final vaildet=_formKey.currentState!.validate();
//     if(!vaildet) return ;
//
//     {
//       showDialog(
//         barrierDismissible: false,
//         context: context,
//         builder: (context)=>Center(
//           child: CircularProgressIndicator(),
//         ));
//     }
//
//     try{
//       await FirebaseAuth.instance.signInWithEmailAndPassword(
//           email: emailControll.text.trim(),
//           password: passwordControll.text.trim());
//       pushNavigator(Home(), context);
//     }on FirebaseAuthException catch(e){
//       print('mmm');
//
//       print(e);
//     }
//   }
//
//   //--------------------------------------
//
//   signUpWithEmailAndPass( TextEditingController emailControll
//       ,TextEditingController passwordControll
//       , GlobalKey<FormState> _formKey
//       ,BuildContext context) async{
//     final vaildet=_formKey.currentState!.validate();
//     if(!vaildet) return ;
//     {showDialog(
//         barrierDismissible: false,
//         context: context,
//         builder: (context)=>Center(
//           child: CircularProgressIndicator(),
//         ));
//     }
//
//
//     try{
//       await FirebaseAuth.instance.createUserWithEmailAndPassword(
//           email: emailControll.text.trim(),
//           password: passwordControll.text.trim());
//       pushNavigator(Home(), context);
//     }on FirebaseAuthException catch(e){
//       print(e);
//     }
//   }
//
//   //--------------------------------------
//
//   signOutWithEmailAndPass(BuildContext context) async{
//     await FirebaseAuth.instance.signOut();
//   }
//
//   //--------------------------------------
//
//    signInWithGoogle(BuildContext context)async{
//     try{
//       final GoogleSignInAccount ?googleUser=
//       await GoogleSignIn(
//           scopes: <String>['email']
//       ).signIn();
//       final GoogleSignInAuthentication googleAuth=
//       await googleUser!.authentication;
//       final credential=GoogleAuthProvider.credential(
//           accessToken: googleAuth.accessToken,
//           idToken: googleAuth.idToken
//       );
//
//       pushNavigator(Home(), context);
//       return await FirebaseAuth.instance.signInWithCredential(credential);
//
//     }on FirebaseAuthException catch(e){
//       print(e);
//     }
//
//
//
//
//   }
//
//   //--------------------------------------
//
//   signOutwithGoogle() async{
//     final GoogleSignInAccount ?googleUser=
//         await GoogleSignIn(
//         scopes: <String>['email']
//     ).signOut();
//   }
//   void signInWithFacebook(BuildContext context) async {
//     try {
//       final LoginResult result = await FacebookAuth.instance.login(
//           permissions: (['email','public_profile']));
//       final token = result.accessToken!.token;
//       final graphResponse = await http.get(
//           Uri.parse('https://graph.facebook.com/'
//               'v2.12/me?fields=name,first_name,last_name,birthday,email&access_token=${token}'));
//       final profile = jsonDecode(graphResponse.body);
//       print("Profile is equal to $profile");
//
//       final AuthCredential facebookCredential = FacebookAuthProvider
//           .credential(result.accessToken!.token);
//       final userCredential = await FirebaseAuth.instance.signInWithCredential(
//           facebookCredential);
//       pushNavigator(Home(), context);
//
//     }catch(e){
//       print(e);
//     }
//   }
// }