//import 'package:tagrank/model/response/account_details.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// shared preference
class MyAppPreferences {
  ///
  factory MyAppPreferences() => _instance;

  ///
  static final MyAppPreferences _instance = MyAppPreferences.internal();

  ///
  MyAppPreferences.internal();

  ///
  SharedPreferences _prefs;

  /// set share preference object
  void setSharedPreference(SharedPreferences _prefs) {
    this._prefs = _prefs;
  }

  ///
  SharedPreferences getSharePreference() => _prefs;

  /// updating user details after login
  void setLoginStatus(bool loginStatus) {
    _prefs
      ..setBool('login_status', loginStatus);
  }



  /// getting login status
  bool getLoginStatus() {
    if (_prefs.getBool('login_status') != null)
      return _prefs.getBool('login_status');
    else
      return false;
  }



}
