
import 'package:dashboard_test/util/shared_preference.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inner_drawer/inner_drawer.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomeProvider extends ChangeNotifier{

  final GlobalKey<InnerDrawerState> innerDrawerKey = GlobalKey<InnerDrawerState>();

  int tabindex=0;
  //bool loginStatus=false;




  Future<void> onTapHammerbar() async{
    innerDrawerKey.currentState.open(direction: InnerDrawerDirection.start);

  }

  void setLoginStatus(bool loginStatus){
    //MyAppPreferences().setLoginStatus(loginStatus);

    tabindex=loginStatus?0:2;
    debugPrint('funtion change  ------');
    notifyListeners();
    notifyListeners();
  }

  void changePage(int index){
    if(tabindex==2){
      /*Scaffold.of(innerDrawerKey.currentContext).showSnackBar(SnackBar(
        content: Text("Please Login"),
      ));*/
      Fluttertoast.showToast(
          msg: "Please Login",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          //timeInSecForIos: 1
      );
      //tabindex=index;
    }else{
      tabindex=index;
    }
    debugPrint('funtion change index ------$index');
    notifyListeners();
    Navigator.pop(innerDrawerKey.currentContext);
  }

}