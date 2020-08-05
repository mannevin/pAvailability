import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        color: Theme.of(context).primaryColor,
        child: SafeArea(
          child: Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircularProgressIndicator(
                  backgroundColor: Colors.lightGreen,
                ),
                const SizedBox(height: 10.0),
                Text("Loading", style: TextStyle(
                    color: Colors.lightGreen,
                    fontWeight: FontWeight.w400,
                    fontSize: 18.0
                ),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}