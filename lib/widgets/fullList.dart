import 'package:flutter/material.dart';
import 'package:wtparkavailability/BodyLayout.dart';
import 'package:wtparkavailability/court_outline.dart';
class FullList extends StatefulWidget {


  @override
  _FullListState createState() => _FullListState();
}

class _FullListState extends State<FullList> {
  int gPoint = 0, sMill = 0, tamarac = 0, cWood = 0, mLake = 0, rWood = 0, bBranch = 0, cStone = 0,
      cTail = 0, cSage = 0, mForest = 0, sBend = 0, fWing = 0, fGate = 0, aBridge = 0, lSide = 0, sDance = 0,
      wVale = 0, cBrook = 0, mValley = 0, pDale = 0, tMont = 0, avalon = 0, hLanding = 0, tRon = 0, tupelo = 0, wWood = 0;


  int dDown = 1;

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

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: dDown == 1 ? full() : dDown == 2 ? groganMills() : dDown == 3 ? pantherCreek() : dDown == 4 ? cochranCrossing() : dDown == 5 ? indianSprings() : dDown == 6 ? aldenBridge() : dDown == 7 ? sterlingRidge() : dDown == 8 ? collegePark() : dDown == 9 ? creeksidePark() : full()
    );
  }

  Widget full() {
    return ListView(
      children: <Widget>[
        SizedBox(
          height: 8,
        ),

        Image.asset('assets/app_logo.png'),
        SizedBox(
          height: 8,
        ),
        Container(
          margin: const EdgeInsets.all(15.0),
          decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, style: BorderStyle.solid),
                  borderRadius: BorderRadius.all(Radius.circular(5))
              )
          ),
          width: double.infinity,
          child: DropdownButtonHideUnderline(
              child: ButtonTheme(

                alignedDropdown: true,
                child: DropdownButton(
                  hint: Text(
                    "All Villages",
                    style: TextStyle(
                        fontSize: 16
                    ),
                  ),
                  items: [

                    DropdownMenuItem(
                      child: Text(
                        "All Villages",
                        style: TextStyle(
                          fontSize: 16
                        ),
                      ),
                      value: 1,
                    ),
                    DropdownMenuItem(
                      child: Text(
                        "Grogan's Mills",
                        style: TextStyle(
                            fontSize: 16
                        ),
                      ),
                      value: 2,
                    ),
                    DropdownMenuItem(
                      child: Text(
                        "Panther Creek",
                        style: TextStyle(
                            fontSize: 16
                        ),
                      ),
                      value: 3,
                    ),
                    DropdownMenuItem(
                      child: Text(
                        "Cochran's Crossing",
                        style: TextStyle(
                            fontSize: 16
                        ),
                      ),
                      value: 4,
                    ),DropdownMenuItem(
                      child: Text(
                        "Indian Springs",
                        style: TextStyle(
                            fontSize: 16
                        ),
                      ),
                      value: 5,
                    ),
                    DropdownMenuItem(
                      child: Text(
                        "Aldren Bridge",
                        style: TextStyle(
                            fontSize: 16
                        ),
                      ),
                      value: 6,
                    ),DropdownMenuItem(
                      child: Text(
                        "Sterling Ridge",
                        style: TextStyle(
                            fontSize: 16
                        ),
                      ),
                      value: 7,
                    ),
                    DropdownMenuItem(
                      child: Text(
                        "College Park",
                        style: TextStyle(
                            fontSize: 16
                        ),
                      ),
                      value: 8,
                    ),
                    DropdownMenuItem(
                      child: Text(
                        "Creekside Park",
                        style: TextStyle(
                            fontSize: 16
                        ),
                      ),
                      value: 9,
                    )
                  ],
                  onChanged: (value) {
                    setState(() {
                      dDown = value;
                      print(dDown);
                    });
                  },
                ),
              )
          ),
        ),

        Row(
            children: <Widget>[
              Expanded(
                  child: Divider(
                    thickness: 5,
                    color: Colors.lightGreen,
                  )
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                "Grogan's Mills",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(
                width: 8,
              ),

              Expanded(
                  child: Divider(
                    thickness: 5,
                    color: Colors.lightGreen,
                  )
              ),
            ]
        ),
        SizedBox(
            height: 10
        ),
        Card(
          elevation: 5,
          child: ListTile(
            title: Text("Grogan's Point Park"),
            subtitle: Text("Available: " + gPoint.toString()),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              courtName = "Grogan's Point Park";
              callClass(courtName);

            },
          ),
        ),
        Card(
          elevation: 5,
          child: ListTile(
            title: Text('Sawmill Park'),
            subtitle: Text("Available: " + sMill.toString()),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              courtName = "Sawmill Park";
              callClass(courtName);

            },
          ),
        ),
        Card(
          elevation: 5,
          child: ListTile(
            title: Text('Tamarac Park'),
            subtitle: Text("Available: " + tamarac.toString()),
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
                  child: Divider(
                    thickness: 5,
                    color: Colors.lightGreen,
                  )
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                "Panther Creek",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(
                width: 8,
              ),

              Expanded(
                  child: Divider(
                    thickness: 5,
                    color: Colors.lightGreen,
                  )
              ),
            ]
        ),
        SizedBox(
            height: 10
        ),
        Card(
          elevation: 5,
          child: ListTile(
            title: Text("Creekwood Park"),
            subtitle: Text("Available: " + cWood.toString()),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              courtName = "Creekwood Park";
              callClass(courtName);

            },
          ),
        ),
        Card(
          elevation: 5,
          child: ListTile(
            title: Text("Meadowlake Park"),
            subtitle: Text("Available: " + mLake.toString()),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              courtName = "Meadowlake Park";
              callClass(courtName);

            },
          ),
        ),
        Card(
          elevation: 5,
          child: ListTile(
            title: Text('Ridgewood Park'),
            subtitle: Text("Available: " + rWood.toString()),

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
                  child: Divider(
                      thickness: 5,
                      color: Colors.lightGreen
                  )
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                "Cochran's Crossing",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold

                ),
              ),
              SizedBox(
                width: 8,
              ),

              Expanded(
                  child: Divider(
                      thickness: 5,
                      color: Colors.lightGreen
                  )
              ),
            ]
        ),
        SizedBox(
            height: 10
        ),
        Card(
          elevation: 5,
          child: ListTile(
            title: Text("Bear Branch Park"),
            subtitle: Text("Available: " + bBranch.toString()),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              courtName = "Bear Branch Park";
              callClass(courtName);

            },
          ),
        ),
        Card(
          elevation: 5,
          child: ListTile(
            title: Text("Capstone Park"),
            subtitle: Text("Available: " + cStone.toString()),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              courtName = "Capstone Park";
              callClass(courtName);

            },
          ),
        ),
        Card(
          elevation: 5,
          child: ListTile(
            title: Text('Cattail Park'),
            subtitle: Text("Available: " + cTail.toString()),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              courtName = "Cattail Park";
              callClass(courtName);

            },
          ),
        ),
        Card(
          elevation: 5,
          child: ListTile(
            title: Text("Copper Sage Park"),
            subtitle: Text("Available: " + cSage.toString()),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              courtName = "Copper Sage Park";
              callClass(courtName);

            },
          ),
        ),
        Card(
          elevation: 5,
          child: ListTile(
            title: Text("Mystic Forest Park"),
            subtitle: Text("Available: " + mForest.toString()),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              courtName = "Mystic Forest Park";
              callClass(courtName);
            },
          ),
        ),
        Card(
          elevation: 5,
          child: ListTile(
            title: Text("Shadowbend Park"),
            subtitle: Text("Available: " + sBend.toString()),
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
                  child: Divider(
                    thickness: 5,
                    color: Colors.lightGreen,
                  )
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                "Indian Springs",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(
                width: 8,
              ),

              Expanded(
                  child: Divider(
                    thickness: 5,
                    color: Colors.lightGreen,
                  )
              ),
            ]
        ),
        SizedBox(
            height: 10
        ),
        Card(
          elevation: 5,
          child: ListTile(
            title: Text("Falconwing Park"),
            subtitle: Text("Available: " + fWing.toString()),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              courtName = "Falconwing Park";
              callClass(courtName);

            },
          ),
        ),
        Card(
          elevation: 5,
          child: ListTile(
            title: Text("Forestgate Park"),
            subtitle: Text("Available: " + fGate.toString()),
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
                  child: Divider(
                    thickness: 5,
                    color: Colors.lightGreen,
                  )
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                "Alden Bridge",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(
                width: 8,
              ),

              Expanded(
                  child: Divider(
                      thickness: 5,
                      color: Colors.lightGreen
                  )
              ),
            ]
        ),
        SizedBox(
            height: 10
        ),
        Card(
          elevation: 5,
          child: ListTile(
            title: Text("Alden Bridge Park"),
            subtitle: Text("Available: " + aBridge.toString()),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              courtName = "Alden Bridge Park";
              callClass(courtName);

            },
          ),
        ),
        Card(
          elevation: 5,
          child: ListTile(
            title: Text("Lakeside Park"),
            subtitle: Text("Available: " + lSide.toString()),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              courtName = "Lakeside Park";
              callClass(courtName);
            },
          ),
        ),
        Card(
          elevation: 5,
          child: ListTile(
            title: Text("Sundance Park"),
            subtitle: Text("Available: " + sDance.toString()),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              courtName = "Sundance Park";
              callClass(courtName);
            },
          ),
        ),
        Card(
          elevation: 5,
          child: ListTile(
            title: Text("Windvale Park"),
            subtitle: Text("Available: " + wVale.toString()),
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
                  child: Divider(
                    thickness: 5,
                    color: Colors.lightGreen,
                  )
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                "Sterling Ridge",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(
                width: 8,
              ),

              Expanded(
                  child: Divider(
                    thickness: 5,
                    color: Colors.lightGreen,
                  )
              ),
            ]
        ),
        SizedBox(
            height: 10
        ),
        Card(
          elevation: 5,
          child: ListTile(
            title: Text("Cranebrook Park"),
            subtitle: Text("Available: " + cBrook.toString()),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              courtName = "Cranebrook Park";
              callClass(courtName);
            },
          ),
        ),
        Card(
          elevation: 5,
          child: ListTile(
            title: Text("May Valley Park"),
            subtitle: Text("Available: " + mValley.toString()),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              courtName = "May Valley Park";
              callClass(courtName);
            },
          ),
        ),
        Card(
          elevation: 5,
          child: ListTile(
            title: Text("Pepperdale Park"),
            subtitle: Text("Available: " + pDale.toString()),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              courtName = "Pepperdale Park";
              callClass(courtName);
            },
          ),
        ),
        Card(
          elevation: 5,
          child: ListTile(
            title: Text("Terramont Park"),
            subtitle: Text("Available: " + tMont.toString()),
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
                  child: Divider(
                    thickness: 5,
                    color: Colors.lightGreen,
                  )
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                "College Park",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(
                width: 8,
              ),

              Expanded(
                  child: Divider(
                      thickness: 5,
                      color: Colors.lightGreen
                  )
              ),
            ]
        ),
        SizedBox(
            height: 10
        ),
        Card(
          elevation: 5,
          child: ListTile(
            title: Text("Avalon Park"),
            subtitle: Text("Available: " + avalon.toString()),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              courtName = "Avalon Park";
              callClass(courtName);

            },
          ),
        ),
        Card(
          elevation: 5,
          child: ListTile(
            title: Text("Harper's Landing Park"),
            subtitle: Text("Available: " + hLanding.toString()),
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
                  child: Divider(
                    thickness: 5,
                    color: Colors.lightGreen,
                  )
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                "Creekside Park",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(
                width: 8,
              ),

              Expanded(
                  child: Divider(
                    thickness: 5,
                    color: Colors.lightGreen,
                  )
              ),
            ]
        ),
        SizedBox(
            height: 10
        ),
        Card(
          elevation: 5,
          child: ListTile(
            title: Text("Timarron Park"),
            subtitle: Text("Available: " + tRon.toString()),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              courtName = "Timarron Park";
              callClass(courtName);

            },
          ),
        ),
        Card(
          elevation: 5,
          child: ListTile(
            title: Text("Tupelo Park"),
            subtitle: Text("Available: " + tupelo.toString()),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              courtName = "Tupelo Park";
              callClass(courtName);

            },
          ),
        ),
        Card(
          elevation: 5,
          child: ListTile(
            title: Text("Wedntwood Park"),
            subtitle: Text("Available: " + wWood.toString()),
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

  Widget groganMills() {
    return ListView(
      children: <Widget>[
        SizedBox(
          height: 8,
        ),

        Image.asset('assets/app_logo.png'),
        SizedBox(
          height: 8,
        ),
        Container(
          margin: const EdgeInsets.all(15.0),
          decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, style: BorderStyle.solid),
                  borderRadius: BorderRadius.all(Radius.circular(5))
              )
          ),
          width: double.infinity,
          child: DropdownButtonHideUnderline(
              child: ButtonTheme(
                alignedDropdown: true,
                child: DropdownButton(
                  hint: Text(
                    "Grogan's Mills",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  items: [

                    DropdownMenuItem(
                      child: Text(
                        "All Villages",
                        style: TextStyle(
                            fontSize: 16
                        ),
                      ),
                      value: 1,
                    ),

                    DropdownMenuItem(
                      child: Text(
                        "Grogan's Mills",
                        style: TextStyle(
                            fontSize: 16
                        ),
                      ),
                      value: 2,
                    ),
                    DropdownMenuItem(
                      child: Text(
                        "Panther Creek",
                        style: TextStyle(
                            fontSize: 16
                        ),
                      ),
                      value: 3,
                    ),
                    DropdownMenuItem(
                      child: Text(
                        "Cochran's Crossing",
                        style: TextStyle(
                            fontSize: 16
                        ),
                      ),
                      value: 4,
                    ),DropdownMenuItem(
                      child: Text(
                        "Indian Springs",
                        style: TextStyle(
                            fontSize: 16
                        ),
                      ),
                      value: 5,
                    ),
                    DropdownMenuItem(
                      child: Text(
                        "Aldren Bridge",
                        style: TextStyle(
                            fontSize: 16
                        ),
                      ),
                      value: 6,
                    ),DropdownMenuItem(
                      child: Text(
                        "Sterling Ridge",
                        style: TextStyle(
                            fontSize: 16
                        ),
                      ),
                      value: 7,
                    ),
                    DropdownMenuItem(
                      child: Text(
                        "College Park",
                        style: TextStyle(
                            fontSize: 16
                        ),
                      ),
                      value: 8,
                    ),
                    DropdownMenuItem(
                      child: Text(
                        "Creekside Park",
                        style: TextStyle(
                            fontSize: 16
                        ),
                      ),
                      value: 9,
                    )
                  ],
                  onChanged: (value) {
                    setState(() {
                      dDown = value;
                      print(dDown);
                    });
                  },
                ),
              )
          ),
        ),

        Row(
            children: <Widget>[
              Expanded(
                  child: Divider(
                    thickness: 5,
                    color: Colors.lightGreen,
                  )
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                "Grogan's Mills",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(
                width: 8,
              ),

              Expanded(
                  child: Divider(
                    thickness: 5,
                    color: Colors.lightGreen,
                  )
              ),
            ]
        ),
        SizedBox(
            height: 10
        ),
        Card(
          elevation: 5,
          child: ListTile(
            title: Text("Grogan's Point Park"),
            subtitle: Text("Available: " + gPoint.toString()),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              courtName = "Grogan's Point Park";
              callClass(courtName);

            },
          ),
        ),
        Card(
          elevation: 5,
          child: ListTile(
            title: Text('Sawmill Park'),
            subtitle: Text("Available: " + sMill.toString()),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              courtName = "Sawmill Park";
              callClass(courtName);

            },
          ),
        ),
        Card(
          elevation: 5,
          child: ListTile(
            title: Text('Tamarac Park'),
            subtitle: Text("Available: " + tamarac.toString()),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              courtName = "Tamarac Park";
              callClass(courtName);

            },
          ),
        ),

      ],

    );
  }
  Widget pantherCreek() {
    return ListView(
      children: <Widget>[
        SizedBox(
          height: 8,
        ),

        Image.asset('assets/app_logo.png'),
        SizedBox(
          height: 8,
        ),
        Container(
          margin: const EdgeInsets.all(15.0),
          decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, style: BorderStyle.solid),
                  borderRadius: BorderRadius.all(Radius.circular(5))
              )
          ),
          width: double.infinity,
          child: DropdownButtonHideUnderline(
              child: ButtonTheme(
                alignedDropdown: true,
                child: DropdownButton(
                  hint: Text(
                    "Panther Creek",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  items: [
                    DropdownMenuItem(
                      child: Text(
                        "All Villages",
                        style: TextStyle(
                            fontSize: 16
                        ),
                      ),
                      value: 1,
                    ),

                    DropdownMenuItem(
                      child: Text(
                        "Grogan's Mills",
                        style: TextStyle(
                            fontSize: 16
                        ),
                      ),
                      value: 2,
                    ),
                    DropdownMenuItem(
                      child: Text(
                        "Panther Creek",
                        style: TextStyle(
                            fontSize: 16
                        ),
                      ),
                      value: 3,
                    ),
                    DropdownMenuItem(
                      child: Text(
                        "Cochran's Crossing",
                        style: TextStyle(
                            fontSize: 16
                        ),
                      ),
                      value: 4,
                    ),DropdownMenuItem(
                      child: Text(
                        "Indian Springs",
                        style: TextStyle(
                            fontSize: 16
                        ),
                      ),
                      value: 5,
                    ),
                    DropdownMenuItem(
                      child: Text(
                        "Aldren Bridge",
                        style: TextStyle(
                            fontSize: 16
                        ),
                      ),
                      value: 6,
                    ),DropdownMenuItem(
                      child: Text(
                        "Sterling Ridge",
                        style: TextStyle(
                            fontSize: 16
                        ),
                      ),
                      value: 7,
                    ),
                    DropdownMenuItem(
                      child: Text(
                        "College Park",
                        style: TextStyle(
                            fontSize: 16
                        ),
                      ),
                      value: 8,
                    ),
                    DropdownMenuItem(
                      child: Text(
                        "Creekside Park",
                        style: TextStyle(
                            fontSize: 16
                        ),
                      ),
                      value: 9,
                    )
                  ],
                  onChanged: (value) {
                    setState(() {
                      dDown = value;
                      print(dDown);
                    });
                  },
                ),
              )
          ),
        ),
        Row(
            children: <Widget>[
              Expanded(
                  child: Divider(
                    thickness: 5,
                    color: Colors.lightGreen,
                  )
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                "Panther Creek",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(
                width: 8,
              ),

              Expanded(
                  child: Divider(
                    thickness: 5,
                    color: Colors.lightGreen,
                  )
              ),
            ]
        ),
        SizedBox(
            height: 10
        ),
        Card(
          elevation: 5,
          child: ListTile(
            title: Text("Creekwood Park"),
            subtitle: Text("Available: " + cWood.toString()),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              courtName = "Creekwood Park";
              callClass(courtName);

            },
          ),
        ),
        Card(
          elevation: 5,
          child: ListTile(
            title: Text("Meadowlake Park"),
            subtitle: Text("Available: " + mLake.toString()),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              courtName = "Meadowlake Park";
              callClass(courtName);

            },
          ),
        ),
        Card(
          elevation: 5,
          child: ListTile(
            title: Text('Ridgewood Park'),
            subtitle: Text("Available: " + rWood.toString()),

            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              courtName = "Ridgewood Park";
              callClass(courtName);

            },
          ),
        ),


      ],

    );
  }
  Widget cochranCrossing() {
    return ListView(
      children: <Widget>[
        SizedBox(
          height: 8,
        ),

        Image.asset('assets/app_logo.png'),
        SizedBox(
          height: 8,
        ),
        Container(
          margin: const EdgeInsets.all(15.0),
          decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, style: BorderStyle.solid),
                  borderRadius: BorderRadius.all(Radius.circular(5))
              )
          ),
          width: double.infinity,
          child: DropdownButtonHideUnderline(
              child: ButtonTheme(
                alignedDropdown: true,
                child: DropdownButton(
                  hint: Text(
                    "Cochran's Crossing",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  items: [

                    DropdownMenuItem(
                      child: Text(
                        "All Villages",
                        style: TextStyle(
                            fontSize: 16
                        ),
                      ),
                      value: 1,
                    ),
                    DropdownMenuItem(
                      child: Text(
                        "Grogan's Mills",
                        style: TextStyle(
                            fontSize: 16
                        ),
                      ),
                      value: 2,
                    ),
                    DropdownMenuItem(
                      child: Text(
                        "Panther Creek",
                        style: TextStyle(
                            fontSize: 16
                        ),
                      ),
                      value: 3,
                    ),
                    DropdownMenuItem(
                      child: Text(
                        "Cochran's Crossing",
                        style: TextStyle(
                            fontSize: 16
                        ),
                      ),
                      value: 4,
                    ),DropdownMenuItem(
                      child: Text(
                        "Indian Springs",
                        style: TextStyle(
                            fontSize: 16
                        ),
                      ),
                      value: 5,
                    ),
                    DropdownMenuItem(
                      child: Text(
                        "Aldren Bridge",
                        style: TextStyle(
                            fontSize: 16
                        ),
                      ),
                      value: 6,
                    ),DropdownMenuItem(
                      child: Text(
                        "Sterling Ridge",
                        style: TextStyle(
                            fontSize: 16
                        ),
                      ),
                      value: 7,
                    ),
                    DropdownMenuItem(
                      child: Text(
                        "College Park",
                        style: TextStyle(
                            fontSize: 16
                        ),
                      ),
                      value: 8,
                    ),
                    DropdownMenuItem(
                      child: Text(
                        "Creekside Park",
                        style: TextStyle(
                            fontSize: 16
                        ),
                      ),
                      value: 9,
                    )
                  ],
                  onChanged: (value) {
                    setState(() {
                      dDown = value;
                      print(dDown);
                    });
                  },
                ),
              )
          ),
        ),

        SizedBox(
            height: 10
        ),
        Row(
            children: <Widget>[
              Expanded(
                  child: Divider(
                      thickness: 5,
                      color: Colors.lightGreen
                  )
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                "Cochran's Crossing",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold

                ),
              ),
              SizedBox(
                width: 8,
              ),

              Expanded(
                  child: Divider(
                      thickness: 5,
                      color: Colors.lightGreen
                  )
              ),
            ]
        ),
        SizedBox(
            height: 10
        ),
        Card(
          elevation: 5,
          child: ListTile(
            title: Text("Bear Branch Park"),
            subtitle: Text("Available: " + bBranch.toString()),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              courtName = "Bear Branch Park";
              callClass(courtName);

            },
          ),
        ),
        Card(
          elevation: 5,
          child: ListTile(
            title: Text("Capstone Park"),
            subtitle: Text("Available: " + cStone.toString()),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              courtName = "Capstone Park";
              callClass(courtName);

            },
          ),
        ),
        Card(
          elevation: 5,
          child: ListTile(
            title: Text('Cattail Park'),
            subtitle: Text("Available: " + cTail.toString()),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              courtName = "Cattail Park";
              callClass(courtName);

            },
          ),
        ),
        Card(
          elevation: 5,
          child: ListTile(
            title: Text("Copper Sage Park"),
            subtitle: Text("Available: " + cSage.toString()),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              courtName = "Copper Sage Park";
              callClass(courtName);

            },
          ),
        ),
        Card(
          elevation: 5,
          child: ListTile(
            title: Text("Mystic Forest Park"),
            subtitle: Text("Available: " + mForest.toString()),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              courtName = "Mystic Forest Park";
              callClass(courtName);
            },
          ),
        ),
        Card(
          elevation: 5,
          child: ListTile(
            title: Text("Shadowbend Park"),
            subtitle: Text("Available: " + sBend.toString()),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              courtName = "Shadowbend Park";
              callClass(courtName);
            },
          ),
        ),

      ],

    );
  }
  Widget indianSprings() {
    return ListView(
      children: <Widget>[
        SizedBox(
          height: 8,
        ),

        Image.asset('assets/app_logo.png'),
        SizedBox(
          height: 8,
        ),
        Container(
          margin: const EdgeInsets.all(15.0),
          decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, style: BorderStyle.solid),
                  borderRadius: BorderRadius.all(Radius.circular(5))
              )
          ),
          width: double.infinity,
          child: DropdownButtonHideUnderline(
              child: ButtonTheme(
                alignedDropdown: true,
                child: DropdownButton(
                  hint: Text(
                    "Indian Springs",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  items: [

                    DropdownMenuItem(
                      child: Text(
                        "All Villages",
                        style: TextStyle(
                            fontSize: 16
                        ),
                      ),
                      value: 1,
                    ),
                    DropdownMenuItem(
                      child: Text(
                        "Grogan's Mills",
                        style: TextStyle(
                            fontSize: 16
                        ),
                      ),
                      value: 2,
                    ),
                    DropdownMenuItem(
                      child: Text(
                        "Panther Creek",
                        style: TextStyle(
                            fontSize: 16
                        ),
                      ),
                      value: 3,
                    ),
                    DropdownMenuItem(
                      child: Text(
                        "Cochran's Crossing",
                        style: TextStyle(
                            fontSize: 16
                        ),
                      ),
                      value: 4,
                    ),DropdownMenuItem(
                      child: Text(
                        "Indian Springs",
                        style: TextStyle(
                            fontSize: 16
                        ),
                      ),
                      value: 5,
                    ),
                    DropdownMenuItem(
                      child: Text(
                        "Aldren Bridge",
                        style: TextStyle(
                            fontSize: 16
                        ),
                      ),
                      value: 6,
                    ),DropdownMenuItem(
                      child: Text(
                        "Sterling Ridge",
                        style: TextStyle(
                            fontSize: 16
                        ),
                      ),
                      value: 7,
                    ),
                    DropdownMenuItem(
                      child: Text(
                        "College Park",
                        style: TextStyle(
                            fontSize: 16
                        ),
                      ),
                      value: 8,
                    ),
                    DropdownMenuItem(
                      child: Text(
                        "Creekside Park",
                        style: TextStyle(
                            fontSize: 16
                        ),
                      ),
                      value: 9,
                    )
                  ],
                  onChanged: (value) {
                    setState(() {
                      dDown = value;
                      print(dDown);
                    });
                  },
                ),
              )
          ),
        ),


        SizedBox(
            height: 10
        ),
        Row(
            children: <Widget>[
              Expanded(
                  child: Divider(
                      thickness: 5,
                      color: Colors.lightGreen
                  )
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                "Indian Springs",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold

                ),
              ),
              SizedBox(
                width: 8,
              ),

              Expanded(
                  child: Divider(
                      thickness: 5,
                      color: Colors.lightGreen
                  )
              ),
            ]
        ),
        SizedBox(
            height: 10
        ),
        Card(
          elevation: 5,
          child: ListTile(
            title: Text("Falconwing Park"),
            subtitle: Text("Available: " + fWing.toString()),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              courtName = "Falconwing Park";
              callClass(courtName);

            },
          ),
        ),
        Card(
          elevation: 5,
          child: ListTile(
            title: Text("Forestgate Park"),
            subtitle: Text("Available: " + fGate.toString()),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              courtName = "Forestgate Park";
              callClass(courtName);
            },
          ),
        ),



      ],

    );
  }
  Widget aldenBridge() {
    return ListView(
      children: <Widget>[
        SizedBox(
          height: 8,
        ),

        Image.asset('assets/app_logo.png'),
        SizedBox(
          height: 8,
        ),
        Container(
          margin: const EdgeInsets.all(15.0),
          decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, style: BorderStyle.solid),
                  borderRadius: BorderRadius.all(Radius.circular(5))
              )
          ),
          width: double.infinity,
          child: DropdownButtonHideUnderline(
              child: ButtonTheme(
                alignedDropdown: true,
                child: DropdownButton(
                  hint: Text(
                    "Alden Bridge",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  items: [
                    DropdownMenuItem(
                      child: Text(
                        "All Villages",
                        style: TextStyle(
                            fontSize: 16
                        ),
                      ),
                      value: 1,
                    ),

                    DropdownMenuItem(
                      child: Text(
                        "Grogan's Mills",
                        style: TextStyle(
                            fontSize: 16
                        ),
                      ),
                      value: 2,
                    ),
                    DropdownMenuItem(
                      child: Text(
                        "Panther Creek",
                        style: TextStyle(
                            fontSize: 16
                        ),
                      ),
                      value: 3,
                    ),
                    DropdownMenuItem(
                      child: Text(
                        "Cochran's Crossing",
                        style: TextStyle(
                            fontSize: 16
                        ),
                      ),
                      value: 4,
                    ),DropdownMenuItem(
                      child: Text(
                        "Indian Springs",
                        style: TextStyle(
                            fontSize: 16
                        ),
                      ),
                      value: 5,
                    ),
                    DropdownMenuItem(
                      child: Text(
                        "Aldren Bridge",
                        style: TextStyle(
                            fontSize: 16
                        ),
                      ),
                      value: 6,
                    ),DropdownMenuItem(
                      child: Text(
                        "Sterling Ridge",
                        style: TextStyle(
                            fontSize: 16
                        ),
                      ),
                      value: 7,
                    ),
                    DropdownMenuItem(
                      child: Text(
                        "College Park",
                        style: TextStyle(
                            fontSize: 16
                        ),
                      ),
                      value: 8,
                    ),
                    DropdownMenuItem(
                      child: Text(
                        "Creekside Park",
                        style: TextStyle(
                            fontSize: 16
                        ),
                      ),
                      value: 9,
                    )
                  ],
                  onChanged: (value) {
                    setState(() {
                      dDown = value;
                      print(dDown);
                    });
                  },
                ),
              )
          ),
        ),


        SizedBox(
            height: 10
        ),
        Row(
            children: <Widget>[
              Expanded(
                  child: Divider(
                    thickness: 5,
                    color: Colors.lightGreen,
                  )
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                "Alden Bridge",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(
                width: 8,
              ),

              Expanded(
                  child: Divider(
                      thickness: 5,
                      color: Colors.lightGreen
                  )
              ),
            ]
        ),
        SizedBox(
            height: 10
        ),
        Card(
          elevation: 5,
          child: ListTile(
            title: Text("Alden Bridge Park"),
            subtitle: Text("Available: " + aBridge.toString()),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              courtName = "Alden Bridge Park";
              callClass(courtName);

            },
          ),
        ),
        Card(
          elevation: 5,
          child: ListTile(
            title: Text("Lakeside Park"),
            subtitle: Text("Available: " + lSide.toString()),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              courtName = "Lakeside Park";
              callClass(courtName);
            },
          ),
        ),
        Card(
          elevation: 5,
          child: ListTile(
            title: Text("Sundance Park"),
            subtitle: Text("Available: " + sDance.toString()),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              courtName = "Sundance Park";
              callClass(courtName);
            },
          ),
        ),
        Card(
          elevation: 5,
          child: ListTile(
            title: Text("Windvale Park"),
            subtitle: Text("Available: " + wVale.toString()),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              courtName = "Windvale Park";
              callClass(courtName);
            },
          ),
        ),
      ],
    );
  }

  Widget sterlingRidge() {
    return ListView(
      children: <Widget>[
        SizedBox(
          height: 8,
        ),

        Image.asset('assets/app_logo.png'),
        SizedBox(
          height: 8,
        ),
        Container(
          margin: const EdgeInsets.all(15.0),
          decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, style: BorderStyle.solid),
                  borderRadius: BorderRadius.all(Radius.circular(5))
              )
          ),
          width: double.infinity,
          child: DropdownButtonHideUnderline(
              child: ButtonTheme(
                alignedDropdown: true,
                child: DropdownButton(
                  hint: Text(
                    "Sterling Ridge",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  items: [
                    DropdownMenuItem(
                      child: Text(
                        "All Villages",
                        style: TextStyle(
                            fontSize: 16
                        ),
                      ),
                      value: 1,
                    ),

                    DropdownMenuItem(
                      child: Text(
                        "Grogan's Mills",
                        style: TextStyle(
                            fontSize: 16
                        ),
                      ),
                      value: 2,
                    ),
                    DropdownMenuItem(
                      child: Text(
                        "Panther Creek",
                        style: TextStyle(
                            fontSize: 16
                        ),
                      ),
                      value: 3,
                    ),
                    DropdownMenuItem(
                      child: Text(
                        "Cochran's Crossing",
                        style: TextStyle(
                            fontSize: 16
                        ),
                      ),
                      value: 4,
                    ),DropdownMenuItem(
                      child: Text(
                        "Indian Springs",
                        style: TextStyle(
                            fontSize: 16
                        ),
                      ),
                      value: 5,
                    ),
                    DropdownMenuItem(
                      child: Text(
                        "Aldren Bridge",
                        style: TextStyle(
                            fontSize: 16
                        ),
                      ),
                      value: 6,
                    ),DropdownMenuItem(
                      child: Text(
                        "Sterling Ridge",
                        style: TextStyle(
                            fontSize: 16
                        ),
                      ),
                      value: 7,
                    ),
                    DropdownMenuItem(
                      child: Text(
                        "College Park",
                        style: TextStyle(
                            fontSize: 16
                        ),
                      ),
                      value: 8,
                    ),
                    DropdownMenuItem(
                      child: Text(
                        "Creekside Park",
                        style: TextStyle(
                            fontSize: 16
                        ),
                      ),
                      value: 9,
                    )
                  ],
                  onChanged: (value) {
                    setState(() {
                      dDown = value;
                      print(dDown);
                    });
                  },
                ),
              )
          ),
        ),


        SizedBox(
            height: 10
        ),
        Row(
            children: <Widget>[
              Expanded(
                  child: Divider(
                    thickness: 5,
                    color: Colors.lightGreen,
                  )
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                "Sterling Ridge",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(
                width: 8,
              ),

              Expanded(
                  child: Divider(
                    thickness: 5,
                    color: Colors.lightGreen,
                  )
              ),
            ]
        ),
        SizedBox(
            height: 10
        ),
        Card(
          elevation: 5,
          child: ListTile(
            title: Text("Cranebrook Park"),
            subtitle: Text("Available: " + cBrook.toString()),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              courtName = "Cranebrook Park";
              callClass(courtName);
            },
          ),
        ),
        Card(
          elevation: 5,
          child: ListTile(
            title: Text("May Valley Park"),
            subtitle: Text("Available: " + mValley.toString()),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              courtName = "May Valley Park";
              callClass(courtName);
            },
          ),
        ),
        Card(
          elevation: 5,
          child: ListTile(
            title: Text("Pepperdale Park"),
            subtitle: Text("Available: " + pDale.toString()),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              courtName = "Pepperdale Park";
              callClass(courtName);
            },
          ),
        ),
        Card(
          elevation: 5,
          child: ListTile(
            title: Text("Terramont Park"),
            subtitle: Text("Available: " + tMont.toString()),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              courtName = "Terramont Park";
              callClass(courtName);
            },
          ),
        ),

      ],
    );
  }
  Widget collegePark() {
    return ListView(
      children: <Widget> [
        SizedBox(
          height: 8,
        ),

        Image.asset('assets/app_logo.png'),
        SizedBox(
          height: 8,
        ),
        Container(
          margin: const EdgeInsets.all(15.0),
          decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, style: BorderStyle.solid),
                  borderRadius: BorderRadius.all(Radius.circular(5))
              )
          ),
          width: double.infinity,
          child: DropdownButtonHideUnderline(
              child: ButtonTheme(
                alignedDropdown: true,
                child: DropdownButton(
                  hint: Text(
                    "College Park",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  items: [
                    DropdownMenuItem(
                      child: Text(
                        "All Villages",
                        style: TextStyle(
                            fontSize: 16
                        ),
                      ),
                      value: 1,
                    ),

                    DropdownMenuItem(
                      child: Text(
                        "Grogan's Mills",
                        style: TextStyle(
                            fontSize: 16
                        ),
                      ),
                      value: 2,
                    ),
                    DropdownMenuItem(
                      child: Text(
                        "Panther Creek",
                        style: TextStyle(
                            fontSize: 16
                        ),
                      ),
                      value: 3,
                    ),
                    DropdownMenuItem(
                      child: Text(
                        "Cochran's Crossing",
                        style: TextStyle(
                            fontSize: 16
                        ),
                      ),
                      value: 4,
                    ),DropdownMenuItem(
                      child: Text(
                        "Indian Springs",
                        style: TextStyle(
                            fontSize: 16
                        ),
                      ),
                      value: 5,
                    ),
                    DropdownMenuItem(
                      child: Text(
                        "Aldren Bridge",
                        style: TextStyle(
                            fontSize: 16
                        ),
                      ),
                      value: 6,
                    ),DropdownMenuItem(
                      child: Text(
                        "Sterling Ridge",
                        style: TextStyle(
                            fontSize: 16
                        ),
                      ),
                      value: 7,
                    ),
                    DropdownMenuItem(
                      child: Text(
                        "College Park",
                        style: TextStyle(
                            fontSize: 16
                        ),
                      ),
                      value: 8,
                    ),
                    DropdownMenuItem(
                      child: Text(
                        "Creekside Park",
                        style: TextStyle(
                            fontSize: 16
                        ),
                      ),
                      value: 9,
                    )
                  ],
                  onChanged: (value) {
                    setState(() {
                      dDown = value;
                      print(dDown);
                    });
                  },
                ),
              )
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
            children: <Widget>[
              Expanded(
                  child: Divider(
                    thickness: 5,
                    color: Colors.lightGreen,
                  )
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                "College Park",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(
                width: 8,
              ),

              Expanded(
                  child: Divider(
                      thickness: 5,
                      color: Colors.lightGreen
                  )
              ),
            ]
        ),
        SizedBox(
            height: 10
        ),
        Card(
          elevation: 5,
          child: ListTile(
            title: Text("Avalon Park"),
            subtitle: Text("Available: " + avalon.toString()),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              courtName = "Avalon Park";
              callClass(courtName);

            },
          ),
        ),
        Card(
          elevation: 5,
          child: ListTile(
            title: Text("Harper's Landing Park"),
            subtitle: Text("Available: " + hLanding.toString()),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              courtName = "Harper's Landing Park";
              callClass(courtName);
            },
          ),
        ),
      ]
    );
  }
  Widget creeksidePark() {
    return ListView(
      children: <Widget>[
        SizedBox(
          height: 8,
        ),

        Image.asset('assets/app_logo.png'),
        SizedBox(
          height: 8,
        ),
        Container(
          margin: const EdgeInsets.all(15.0),
          decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, style: BorderStyle.solid),
                  borderRadius: BorderRadius.all(Radius.circular(5))
              )
          ),
          width: double.infinity,
          child: DropdownButtonHideUnderline(
              child: ButtonTheme(
                alignedDropdown: true,
                child: DropdownButton(
                  hint: Text(
                    "Creekside Park",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  items: [
                    DropdownMenuItem(
                      child: Text(
                        "All Villages",
                        style: TextStyle(
                            fontSize: 16
                        ),
                      ),
                      value: 1,
                    ),

                    DropdownMenuItem(
                      child: Text(
                        "Grogan's Mills",
                        style: TextStyle(
                            fontSize: 16
                        ),
                      ),
                      value: 2,
                    ),
                    DropdownMenuItem(
                      child: Text(
                        "Panther Creek",
                        style: TextStyle(
                            fontSize: 16
                        ),
                      ),
                      value: 3,
                    ),
                    DropdownMenuItem(
                      child: Text(
                        "Cochran's Crossing",
                        style: TextStyle(
                            fontSize: 16
                        ),
                      ),
                      value: 4,
                    ),DropdownMenuItem(
                      child: Text(
                        "Indian Springs",
                        style: TextStyle(
                            fontSize: 16
                        ),
                      ),
                      value: 5,
                    ),
                    DropdownMenuItem(
                      child: Text(
                        "Aldren Bridge",
                        style: TextStyle(
                            fontSize: 16
                        ),
                      ),
                      value: 6,
                    ),DropdownMenuItem(
                      child: Text(
                        "Sterling Ridge",
                        style: TextStyle(
                            fontSize: 16
                        ),
                      ),
                      value: 7,
                    ),
                    DropdownMenuItem(
                      child: Text(
                        "College Park",
                        style: TextStyle(
                            fontSize: 16
                        ),
                      ),
                      value: 8,
                    ),
                    DropdownMenuItem(
                      child: Text(
                        "Creekside Park",
                        style: TextStyle(
                            fontSize: 16
                        ),
                      ),
                      value: 9,
                    )
                  ],
                  onChanged: (value) {
                    setState(() {
                      dDown = value;
                      print(dDown);
                    });
                  },
                ),
              )
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
            children: <Widget>[
              Expanded(
                  child: Divider(
                    thickness: 5,
                    color: Colors.lightGreen,
                  )
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                "Creekside Park",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(
                width: 8,
              ),

              Expanded(
                  child: Divider(
                    thickness: 5,
                    color: Colors.lightGreen,
                  )
              ),
            ]
        ),
        SizedBox(
            height: 10
        ),
        Card(
          elevation: 5,
          child: ListTile(
            title: Text("Timarron Park"),
            subtitle: Text("Available: " + tRon.toString()),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              courtName = "Timarron Park";
              callClass(courtName);

            },
          ),
        ),
        Card(
          elevation: 5,
          child: ListTile(

            title: Text("Tupelo Park"),
            subtitle: Text("Available: " + tupelo.toString()),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              courtName = "Tupelo Park";
              callClass(courtName);

            },
          ),
        ),
        Card(
          elevation: 5,
          child: ListTile(
            title: Text("Wedntwood Park"),
            subtitle: Text("Available: " + wWood.toString()),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              courtName = "Wendtwood Park";
              callClass(courtName);
            },
          ),
        ),

      ]
    );
  }

}
