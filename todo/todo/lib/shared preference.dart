// import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesMain{
  late SharedPreferences _late;

  static final SharedPreferencesMain i = SharedPreferencesMain._internal();

  SharedPreferencesMain._internal();

  factory SharedPreferencesMain(){
    return i;
  }

  Future <void> init() async {
    _late = await _initPrefs();
  }

  Future <SharedPreferences> _initPrefs() async{
    return await SharedPreferences.getInstance();
  }
  Future <void> appFirstOpen(bool b) async{
    await _late.setBool("First", b);
  }

  bool getAppFirstOpen(){
    return _late.getBool("First") ?? false;
  }

}