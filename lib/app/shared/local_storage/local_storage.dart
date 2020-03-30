import 'dart:async';

import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage {

Completer<SharedPreferences> _instance = Completer<SharedPreferences>();

  _init() async {
    _instance.complete(await SharedPreferences.getInstance());
  }

  LocalStorage(){
    _init();
  }

  Future delete(String key) async {
    var shared = await _instance.future;
    shared.remove(key);
  }

  Future get(String key) async {
    var shared = await _instance.future;
    return shared.getString(key);
  }

  Future put(String key, String value) async {
    var shared = await _instance.future;
    shared.setString(key, value);
  }

}