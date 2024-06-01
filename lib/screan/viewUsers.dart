// import 'package:flutter/material.dart';
//
// import '../Local_Db/DbControll/DBControll.dart';
//
//
//
// class ViewUsers extends StatefulWidget {
//   const ViewUsers({Key? key}) : super(key: key);
//
//   @override
//   State<ViewUsers> createState() => _ViewUsersState();
// }
//
// class _ViewUsersState extends State<ViewUsers> {
//   var dbControll;
//   void initState(){
//     super.initState();
//     dbControll=DbControll();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child:RaisedButton(
//             child: Text('view'),
//             onPressed: ()async{
//               await dbControll.fetchAllUsers().then((userData){
//                 for(int i=0;i<userData.length;i++){
//                   print(userData[i]['email']);
//                 }
//               }).catchError((error)async{
//                 print(error);
//               });
//             }
//         ),
//       )
//     );
//   }
// }
