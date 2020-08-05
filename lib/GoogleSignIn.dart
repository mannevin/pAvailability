import 'package:flutter/material.dart';
import 'package:wtparkavailability/WelcomePage.dart';
import 'package:wtparkavailability/tennis.dart';


class GoogleSignIn extends StatefulWidget {
  GoogleSignIn({Key key, this.title}) : super(key: key);

  final String title;


  @override
  _GoogleSignInState createState() => _GoogleSignInState();
}

class _GoogleSignInState extends State<GoogleSignIn> {

  String fullName = " ";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child:Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Center(
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.center,
              //mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset('assets/google_logo.png', width: MediaQuery.of(context).size.width * .4,),

                Text("Signed in With Google", style: TextStyle(fontSize: 20,), ),
                SizedBox(height: MediaQuery.of(context).size.height*.05,),
                CircleAvatar(radius: MediaQuery.of(context).size.width*.1,),
                SizedBox(
                  height: MediaQuery.of(context).size.height*.03,
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      text: 'Name: ',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          text: fullName,
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),

                      ]),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height*.03,
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      text: 'Email Address: ',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          text: fullName,
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),

                      ]),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*.02,),
                Row(
                  children: <Widget>[
                    Spacer(),
                    FloatingActionButton(

                      backgroundColor: Colors.lightGreen,
                      foregroundColor: Colors.white,
                      mini: false,
                      onPressed: () {
                      },
                      child: Icon(Icons.exit_to_app),

                    ),

                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height*.02,)
              ],
            ),
          ),
        ),
      ),
    );
  }

}