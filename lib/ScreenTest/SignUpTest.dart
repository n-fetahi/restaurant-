// import 'package:fetahi_restaurant2/constant/User_Auth.dart';
// import 'package:flutter/material.dart';
// // import 'package:fetahi_restaurant/constant/';
// // import 'package:food/constant/DefultButton.dart';
// // import 'package:food/constant/SizeOfConfig.dart';
// // import 'package:food/constant/TextForm.dart';
//
// import '../Local_Db/DbControll/DBControll.dart';
// import '../Local_Db/Models/UcerModel.dart';
// import '../constant/ButtonItem.dart';
// import '../constant/DefultBotton.dart';
// import '../constant/MyInkWell.dart';
// import '../constant/Navigators.dart';
// import '../constant/SizeOfConfig.dart';
// import '../constant/TextForm.dart';
// import '../screan/Home.dart';
// import 'SignInTest.dart';
//
//
// class SignUpTest extends StatefulWidget {
//   SignUpTest({Key? key}) : super(key: key);
//   @override
//   State<SignUpTest> createState() => _SignUpTesttState();
// }
//
// class _SignUpTesttState extends State<SignUpTest> {
//   String? email;
//   String? password;
//
//   final emailControll=TextEditingController();
//   final passwordControll=TextEditingController();
//   void dispose(){
//     emailControll.dispose();
//     passwordControll.dispose();
//     super.dispose();
//   }
//
//   final _formKey=GlobalKey<FormState>();
//
//   var dbControll;
//   void initState(){
//     super.initState();
//     dbControll=DbControll();
//   }
//
//
//   String errorText='';
//
//   @override
//   Widget build(BuildContext context) {
//     SizeConfig().init(context);
//     return Scaffold(
//       backgroundColor:Color(0xA128B299),
//       body: SafeArea(
//         child: Padding(
//           padding: EdgeInsets.all(12),
//           child: SingleChildScrollView(
//             child: Form(
//               key: _formKey,
//               child: Column(
//                 children: [
//                   SizedBox(height: getheighScreen(20),),
//                   Text('Sign Up',
//                     style: TextStyle(
//                       fontSize: 40,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white,
//                     ),),
//                   SizedBox(height: getheighScreen(60),),
//                   TextForm(
//                     controller: emailControll,
//                     obscureText: false,
//                     icon: Icons.email,
//                     myKey: TextInputType.emailAddress,
//                     lableText: 'Email',
//                     validation: (value){},
//                     press:(value){
//                       email=value;
//                     } ,
//
//                   ),
//                   SizedBox(height: getheighScreen(40),),
//                   TextForm(
//                     controller: passwordControll,
//
//                     obscureText: true,
//                     icon: Icons.visibility_off,
//                     myKey: TextInputType.text,
//                     lableText: 'password',
//                     validation: (value){},
//                     press:(value){
//                       password=value;
//                     } ,),
//                   SizedBox(height: getheighScreen(20),),
//                   Text(errorText,
//                     style: TextStyle(
//                         color: Colors.red,
//                         fontSize: 16,
//                         fontWeight: FontWeight.bold,
//                         shadows: [
//                           BoxShadow(
//                             color: Colors.black.withOpacity(0.5),
//                             blurRadius: 3,
//                             offset: const Offset(1, 3),
//                           ),
//                         ]
//                     ),
//                   ),
//                   SizedBox(height: getheighScreen(30),),
//                   DefultButton('Sign Up', (){
//                     User_Auth().signUpWithEmailAndPass(emailControll, passwordControll, _formKey, context);
//                   }),
//                   SizedBox(height: getheighScreen(20),),
//
//                   myInlWell("Sign Up", ()async{
//
//                           print('----------------------------');
//                           if(_formKey.currentState!.validate()){
//                             _formKey.currentState!.save();
//                             UserModel uModel=UserModel(email: email,password: password);
//                             await dbControll.saveData(uModel).then((userData){
//                               print('sec');
//                               // pushNavigator(Home(), context);
//
//                             }).catchError((error)async{
//                               print(error);
//                             });
//                           }else{
//                             print('----------------------------');
//                           }
//
//                       }),
//                   SizedBox(height: getheighScreen(30),),
//                   Text('OR',style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),),
//                   SizedBox(height: getheighScreen(30),),
//                   ButtonItem('assets/SvgImg/facebook-svgrepo-com.svg', 'Continue with Facebook', () {
//                     User_Auth().signInWithFacebook(context);
//                   }, context),
//                   SizedBox(height: getheighScreen(30),),
//                   ButtonItem('assets/SvgImg/google-logo-search-new-svgrepo-com.svg', 'Continue with Google', () {
//                     User_Auth().signInWithGoogle(context);
//                   }, context),
//                   SizedBox(height: getheighScreen(40),),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text("If you don't have an Account ?",
//                         style: TextStyle(
//                           color: Color(0xfff8f8f8),
//                           fontSize: 18,
//                         ),),
//
//                       myInlWell("Sign In", ()async{
//                         pushNavigator(SignInTest(), context);
//
//                         // Navi_Ev(SignInPage(), context);
//
//
//                       })
//                     ],
//                   )
//                 ],
//
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
