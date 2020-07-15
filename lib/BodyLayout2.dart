import 'package:flutter/material.dart';
import 'package:wtparkavailability/BodyLayout.dart';
import 'court_outline.dart';

class BodyLayout2 extends StatelessWidget {
  String courtName;
  @override
  Widget build(BuildContext context) {
    return _myListView2(context);

  }

  Widget _myListView2(BuildContext context) {
    bool checked = false;
    String courtName;
    Future cOutline(context) async {
      Navigator.push(context, MaterialPageRoute(builder: (context) => courtOutline(courtName, checked)));
    }
    Future bl1(context) async {
      Navigator.push(context, MaterialPageRoute(builder: (context) => BodyLayout()));
    }
    return ListView(
      children: <Widget>[
        SizedBox(
          height: 8,
        ),

        Row(

          children: <Widget>[
            SizedBox(
              width: 8,
            ),

            MaterialButton(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
              color: Colors.white,
              highlightColor: Colors.lightGreen,
              child: Text(
                  "By Village"
              ),
              onPressed: () {
                bl1(context);
              },
            ),
            Spacer(),
            MaterialButton(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
              color: Colors.lightGreen,
              highlightColor: Colors.lightGreen,
              child: Text(
                  "By Availability"
              ),
              onPressed: () {

              },
            ),
            SizedBox(
              width: 8,
            )
          ],
        ),




      ],

    );

  }


}