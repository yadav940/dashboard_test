import 'package:dashboard_test/provider/homeProvider.dart';
import 'package:flutter/material.dart';

class LogoutPage extends StatelessWidget {
  HomeProvider homeProvider;
  LogoutPage(this.homeProvider);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        onPressed: (){
          homeProvider.setLoginStatus(true);
        },
        child: const Text('Click here -> Login', style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
