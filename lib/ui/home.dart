import 'package:dashboard_test/provider/homeProvider.dart';
import 'package:dashboard_test/ui/dashboard.dart';
import 'package:dashboard_test/ui/profile.dart';
import 'package:dashboard_test/util/shared_preference.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inner_drawer/inner_drawer.dart';
import 'package:provider/provider.dart';

import 'logout_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {

    final homeProvider = Provider.of<HomeProvider>(context);
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return InnerDrawer(
      key: homeProvider.innerDrawerKey,
      onTapClose: true, // default false
      swipe: false, // default true
      colorTransitionChild: Colors.white, // default Color.black54
      colorTransitionScaffold: Colors.black12, // default Color.black54

      //When setting the vertical offset, be sure to use only top or bottom
      //offset: IDOffset.only(bottom: 0.05, right: 0.0, left: 0.0),

      //scale: IDOffset.horizontal( 0.8 ), // set the offset in both directions

      proportionalChildArea : true, // default true
      borderRadius: 5, // default 0
      leftAnimationType: InnerDrawerAnimation.static, // default static
      rightAnimationType: InnerDrawerAnimation.quadratic,
      backgroundDecoration: BoxDecoration(color: Colors.white ), // default  Theme.of(context).backgroundColor

      //when a pointer that is in contact with the screen and moves to the right or left
      onDragUpdate: (double val, InnerDrawerDirection direction) {
        // return values between 1 and 0
        print(val);
        // check if the swipe is to the right or to the left
        print(direction==InnerDrawerDirection.start);
      },

      innerDrawerCallback: (a) => print(a), // r// return  true (open) or false (close)
      // required if rightChild is not set
      rightChild: Container(),
      leftChild: SafeArea(
        child: SafeArea(
          child: Drawer(
              child: Column(
                children: [
                  //Text(''),
                  const SizedBox(height: 30,),
                  ListTile(
                    title: Text('Dashboard',),
                    onTap: () {
                      homeProvider.changePage(0);
                    },
                  ),
                  const SizedBox(height: 12,),
                  ListTile(
                    title: Text('Profile' , ),
                    onTap: () {
                      homeProvider.changePage(1);
                    },
                  ),
                  const SizedBox(height: 12,),
                  ListTile(
                      title: Text('Logout'),
                      onTap: () {
                        homeProvider.changePage(2);
                      }
                  ),
                  const SizedBox(height: 12,),

                ],
              )
          ),
        ),
      ),
      scaffold: Scaffold(
        backgroundColor: Colors.white,
        //appBar: AppBar(title: Text('Dashboard',style: TextStyle(color: Colors.black87,fontWeight: FontWeight.w700),),backgroundColor: Colors.white,),
        //drawer: ,
        body: SafeArea(
          child: Column(
            children: [

              Card(
                elevation: 4,
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.dehaze, color: Colors.black),
                      onPressed: () => homeProvider.onTapHammerbar(),
                    ),
                  ],
                ),
              ),
              Selector<HomeProvider,int>(
                  builder:  (context, data, child){
                    Widget page;
                    switch(data){

                      case 0:
                        page=Dashboard();
                        break;
                      case 1:
                        page =Profile();
                        break;
                      default :
                        page=LogoutPage(homeProvider);
                    }
                    return page;
                  },
                selector: (buildContext, provider) =>provider.tabindex,

              )
            ],
          ),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
