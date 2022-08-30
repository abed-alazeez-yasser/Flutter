import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs {
  SharedPrefs._();
  static SharedPrefs instance = SharedPrefs._();

  SharedPreferences? prefs;

  static const String _isFirstOpenApp = '_isFirstOpenApp';

  Future<void> initPrefs() async {
    prefs = await SharedPreferences.getInstance();
  }

  Future<void> setIsFirstOpenApp() async {
    prefs?.setBool(_isFirstOpenApp, false);
  }

  bool getIsFirstOpenApp() {
    return prefs?.getBool(_isFirstOpenApp) ?? true;
  }
}
