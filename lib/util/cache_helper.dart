import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
class SharedPrefs {
  static SharedPreferences _sharedPrefs;

  init() async {
    if (_sharedPrefs == null) {
      _sharedPrefs = await SharedPreferences.getInstance();
    }
  }


  String getString(String key) => _sharedPrefs.getString(key)??"";
  bool getBool(String key) =>_sharedPrefs.getBool(key)??false;
  int getInt(String key) =>_sharedPrefs.getInt(key)??0;
  double getDouble(String key) =>_sharedPrefs.getDouble(key)??0.0;


  Future setString(String key, String value) async => await _sharedPrefs.setString(key, value);
  Future setBool(String key, bool value) async => await _sharedPrefs.setBool(key, value);
  Future setInt(String key, int value) async => await _sharedPrefs.setInt(key, value);
  Future setDouble(String key, double value) async => await _sharedPrefs.setDouble(key, value);
}
