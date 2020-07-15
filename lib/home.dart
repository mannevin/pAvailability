import 'package:flutter/material.dart';

import 'tennis.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          OutlineButton(
            onPressed:() {

              goToTennis(context);
          },
          )
        ],
      ),
    );
  }
  Future goToTennis(context) async {
    print("lol");
    Navigator.push(context, MaterialPageRoute(builder: (context) => tennis()));
  }
}


