// import 'package:flutter/material.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:sqflite/sqflite.dart';
//
// import 'package:path/path.dart';
//
// import 'dart:io' as io;
//
// import '../Models/UcerModel.dart';
//
// class DbControll{
//
//   static Database? _db;
//   static const String DB_Name = 'db.db';
//   static const String Table_User = 'user';
//   static const int Version = 1;
//
//   //------------Users Column-------------
//   static const String C_Email = 'email';
//   static const String C_Password = 'password';
//
//
//
//   Future <Database?> get db async{
//     if (_db != null ){
//       return _db;
//     }
//     else {
//       _db = await initDb();
//       return _db;
//     }
//   }
//   initDb () async{
//     io.Directory documentsDirectory =
//     await getApplicationDocumentsDirectory();
//     String path = join(documentsDirectory.path, DB_Name);
//     var db = await openDatabase(path, version: Version,onCreate: _onCreate);
//     return db;
//   }
//
//   _onCreate(Database db, int intVersion) async {
//     await db.execute("CREATE TABLE $Table_User ("
//         " $C_Email TEXT,"
//         " $C_Password TEXT,"
//         " PRIMARY KEY ($C_Email)"
//         ")");
//   }
//
//   Future<int> saveData(UserModel user,) async {
//     var dbClient = await db;
//     var res = await dbClient!.insert(Table_User, user.toMap());
//     return res;
//   }
//
//   Future<UserModel?> getLoginUser(String user_email,String user_password) async {
//     var dbClient = await db;
//     var res = await dbClient!.rawQuery("SELECT * FROM $Table_User WHERE "
//         "$C_Email    = '$user_email' AND "
//         "$C_Password = '$user_password'");
//
//     if(res.length > 0) {
//       return UserModel.fromMap(res.first);
//     }
//
//     return null;
//   }
//
//
//    fetchAllUsers() async {
//      var dbClient = await db;
//     var res = await dbClient!.rawQuery("SELECT * FROM $Table_User");
//     if(res.length > 0) {
//       return res;
//     }
//     return null;
//   }
//
//   Future<int> updateUser(UserModel user) async {
//     var dbClient = await db;
//     var res = await dbClient!.update(Table_User, user.toMap(),
//         where: '$C_Email = ?', whereArgs: [user.email]);
//     return res;
//   }
//
//   Future<int> deleteUser(String user_email) async {
//     var dbClient = await db;
//     var res = await dbClient!
//         .delete(Table_User, where: '$C_Email = ?',
//         whereArgs: [user_email]);
//     return res;
//   }
// }
//
