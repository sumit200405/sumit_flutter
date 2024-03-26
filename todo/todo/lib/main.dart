import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// Screens 
import 'package:todo/screens/addScreen.dart';
import 'package:todo/screens/homeScreen.dart';
import 'package:todo/services/sharedPrefs.dart';

void main() async{

  await SharedPreferencesMan().init();

  // SharedPreferencesMan.i.setAppFirstOpen(true);
  debugPrint("${SharedPreferencesMan.i.getAppFirstOpen()}");

  runApp(MaterialApp(

    initialRoute: "/",

  routes: {
    "/" : (context) => Home(),
    "/add" : (context) => AddScreen(),
  }

  ));
}