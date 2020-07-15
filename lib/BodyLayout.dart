import 'package:flutter/material.dart';
import 'BodyLayout2.dart';
import 'court_outline.dart';
import 'tennis.dart';
class BodyLayout extends StatelessWidget {
  String courtName;
  @override
  Widget build(BuildContext context) {

    return _myListView(context);

  }

  Widget _myListView(BuildContext context) {
    bool checked = false;
    String courtName;
    bool village;
    callClass(String courtname) {
      var route = new MaterialPageRoute(
        builder: (BuildContext context) =>
        new courtOutline(courtName, checked),
      );
      Navigator.of(context).push(route);
    }
    Future cOutline(context) async {
      Navigator.push(context, MaterialPageRoute(builder: (context) => courtOutline(courtName, checked)));
    }
    Future bl2(context) async {
      Navigator.push(context, MaterialPageRoute(builder: (context) => BodyLayout2()));
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
              color: Colors.lightGreen,
              highlightColor: Colors.lightGreen,
              child: Text(
                  "By Village"
              ),
              onPressed: () {

              },
            ),
            Spacer(),
            MaterialButton(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
              color: Colors.white,
              highlightColor: Colors.lightGreen,
              child: Text(
                  "By Availability"
              ),
              onPressed: () {
                village = !village;
                tennis();
                bl2(context);
              },
            ),
            SizedBox(
              width: 8,
            )
          ],
        ),
        Row(
            children: <Widget>[
              Expanded(
                  child: Divider()
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                "Grogan's Mills",
                style: TextStyle(
                    fontSize: 15
                ),
              ),
              SizedBox(
                width: 8,
              ),

              Expanded(
                  child: Divider()
              ),
            ]
        ),
        SizedBox(
            height: 10
        ),
        Card(
          child: ListTile(
            title: Text("Grogan's Point Park"),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              courtName = "Grogan's Point Park";
              callClass(courtName);

            },
          ),
        ),
        Card(
          child: ListTile(
            title: Text('Sawmill Park'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              courtName = "Sawmill Park";
              callClass(courtName);

            },
          ),
        ),
        Card(
          child: ListTile(
            title: Text('Tamarac Park'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              courtName = "Tamarac Park";
              callClass(courtName);

            },
          ),
        ),
        SizedBox(height: 10,),
        Row(
            children: <Widget>[
              Expanded(
                  child: Divider()
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                "Panther Creek",
                style: TextStyle(
                    fontSize: 15
                ),
              ),
              SizedBox(
                width: 8,
              ),

              Expanded(
                  child: Divider()
              ),
            ]
        ),
        SizedBox(
            height: 10
        ),
        Card(
          child: ListTile(
            title: Text("Creekwood Park"),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              courtName = "Creekwood Park";
              callClass(courtName);

            },
          ),
        ),
        Card(
          child: ListTile(
            title: Text("Meadowlake Park"),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              courtName = "Meadowlake Park";
              callClass(courtName);

            },
          ),
        ),
        Card(
          child: ListTile(
            title: Text('Ridgewood Park'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              courtName = "Ridgewood Park";
              callClass(courtName);

            },
          ),
        ),
        SizedBox(height: 10,),
        Row(
            children: <Widget>[
              Expanded(
                  child: Divider()
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                "Cochran's Crossing",
                style: TextStyle(
                    fontSize: 15
                ),
              ),
              SizedBox(
                width: 8,
              ),

              Expanded(
                  child: Divider()
              ),
            ]
        ),
        SizedBox(
            height: 10
        ),
        Card(
          child: ListTile(
            title: Text("Bear Branch Park"),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              courtName = "Bear Branch Park";
              callClass(courtName);

            },
          ),
        ),
        Card(
          child: ListTile(
            title: Text("Capstone Park"),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              courtName = "Capstone Park";
              callClass(courtName);

            },
          ),
        ),
        Card(
          child: ListTile(
            title: Text('Cattail Park'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              courtName = "Cattail Park";
              callClass(courtName);

            },
          ),
        ),
        Card(
          child: ListTile(
            title: Text("Copper Sage Park"),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              courtName = "Copper Sage Park";
              callClass(courtName);

            },
          ),
        ),
        Card(
          child: ListTile(
            title: Text("Mystic Forest Park"),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              courtName = "Mystic Forest Park";
              callClass(courtName);
            },
          ),
        ),
        Card(
          child: ListTile(
            title: Text("Shadowbend Park"),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              courtName = "Shadowbend Park";
              callClass(courtName);
            },
          ),
        ),
        SizedBox(height: 10,),
        Row(
            children: <Widget>[
              Expanded(
                  child: Divider()
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                "Indian Springs",
                style: TextStyle(
                    fontSize: 15
                ),
              ),
              SizedBox(
                width: 8,
              ),

              Expanded(
                  child: Divider()
              ),
            ]
        ),
        SizedBox(
            height: 10
        ),
        Card(
          child: ListTile(
            title: Text("Falconwing Park"),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              courtName = "Falconwing Park";
              callClass(courtName);

            },
          ),
        ),
        Card(
          child: ListTile(
            title: Text("Forestgate Park"),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              courtName = "Forestgate Park";
              callClass(courtName);
            },
          ),
        ),
        SizedBox(height: 10,),
        Row(
            children: <Widget>[
              Expanded(
                  child: Divider()
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                "Alden Bridge",
                style: TextStyle(
                    fontSize: 15
                ),
              ),
              SizedBox(
                width: 8,
              ),

              Expanded(
                  child: Divider()
              ),
            ]
        ),
        SizedBox(
            height: 10
        ),
        Card(
          child: ListTile(
            title: Text("Alden Bridge Park"),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              courtName = "Alden Bridge Park";
              callClass(courtName);

            },
          ),
        ),
        Card(
          child: ListTile(
            title: Text("Lakeside Park"),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              courtName = "Lakeside Park";
              callClass(courtName);
            },
          ),
        ),
        Card(
          child: ListTile(
            title: Text("Sundance Park"),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              courtName = "Sundance Park";
              callClass(courtName);
            },
          ),
        ),
        Card(
          child: ListTile(
            title: Text("Windvale Park"),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              courtName = "Windvale Park";
              callClass(courtName);
            },
          ),
        ),
        SizedBox(height: 10,),
        Row(
            children: <Widget>[
              Expanded(
                  child: Divider()
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                "Sterling Ridge",
                style: TextStyle(
                    fontSize: 15
                ),
              ),
              SizedBox(
                width: 8,
              ),

              Expanded(
                  child: Divider()
              ),
            ]
        ),
        SizedBox(
            height: 10
        ),
        Card(
          child: ListTile(
            title: Text("Cranebrook Park"),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              courtName = "Cranebrook Park";
              callClass(courtName);
            },
          ),
        ),
        Card(
          child: ListTile(
            title: Text("May Valley Park"),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              courtName = "May Valley Park";
              callClass(courtName);
            },
          ),
        ),
        Card(
          child: ListTile(
            title: Text("Pepperdale Park"),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              courtName = "Pepperdale Park";
              callClass(courtName);
            },
          ),
        ),
        Card(
          child: ListTile(
            title: Text("Terramont Park"),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              courtName = "Terramont Park";
              callClass(courtName);
            },
          ),
        ),
        SizedBox(height: 10,),
        Row(
            children: <Widget>[
              Expanded(
                  child: Divider()
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                "College Park",
                style: TextStyle(
                    fontSize: 15
                ),
              ),
              SizedBox(
                width: 8,
              ),

              Expanded(
                  child: Divider()
              ),
            ]
        ),
        SizedBox(
            height: 10
        ),
        Card(
          child: ListTile(
            title: Text("Avalon Park"),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              courtName = "Avalon Park";
              callClass(courtName);

            },
          ),
        ),
        Card(
          child: ListTile(
            title: Text("Harper's Landing Park"),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              courtName = "Harper's Landing Park";
              callClass(courtName);
            },
          ),
        ),
        SizedBox(height: 10,),
        Row(
            children: <Widget>[
              Expanded(
                  child: Divider()
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                "Creekside Park",
                style: TextStyle(
                    fontSize: 15
                ),
              ),
              SizedBox(
                width: 8,
              ),

              Expanded(
                  child: Divider()
              ),
            ]
        ),
        SizedBox(
            height: 10
        ),
        Card(
          child: ListTile(
            title: Text("Timarron Park"),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              courtName = "Timarron Park";
              callClass(courtName);

            },
          ),
        ),
        Card(
          child: ListTile(
            title: Text("Tupelo Park"),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              courtName = "Tupelo Park";
              callClass(courtName);

            },
          ),
        ),
        Card(
          child: ListTile(
            title: Text("Wedntwood Park"),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              courtName = "Wendtwood Park";
              callClass(courtName);
            },
          ),
        ),



      ],

    );

  }


}