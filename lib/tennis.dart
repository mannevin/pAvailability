import 'package:flutter/material.dart';
import 'BodyLayout2.dart';
import 'home.dart';
import 'BodyLayout.dart';
class tennis extends StatelessWidget {

  final items = List<String>.generate(10000, (i) => "Item $i");
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(

      ),
      home: reserveTennis(),
    );
  }
}

class reserveTennis extends StatefulWidget {
  @override
  _reserveTennisState createState() => _reserveTennisState();

}

class _reserveTennisState extends State<reserveTennis> {
  String dropdownValue = 'All Courts';
  bool village = true;

  String _date = "Not set";
  String _time = "Not set";

  bool dateFilled;
  bool timeFilled;
  bool lengthFilled;
  bool parkFilled;
  bool numFilled;

  DateTime selectedDate = DateTime.now();


  @override
  void initState() {
    super.initState();

  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          title: Text(
            "Park Availability",
            style: TextStyle(
                fontFamily: 'SourceSansPro'
            ),
          ),
          backgroundColor: Colors.lightGreen,
          ),
        floatingActionButtonLocation:
        FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.lightGreen,
          child: const Icon(Icons.add), onPressed: () {
            showBottomSheet();

        },),
        bottomNavigationBar: BottomAppBar(

          shape: CircularNotchedRectangle(),
          notchMargin: 4.0,
          child: new Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.info_outline),
                    onPressed: () {
                    },),
                  Text(
                    "Court Info",
                    style: TextStyle(
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),

              Row(
                children: <Widget>[
                  Text(
                      "Account",
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.account_circle),
                    onPressed: () {
                    },),

                ],
              ),
            ],
          ),
        ),
        body: village ? BodyLayout() : BodyLayout2()




    );
  }
  Future back(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => home()));
  }
  void setCourt() {

  }
  Future<Null> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  showBottomSheet() {
    showModalBottomSheet<void>(context: context,
        builder: (BuildContext context) {
          return new ListView(

            children: <Widget>[
              new Row(
                children: [
                  Spacer(),
                  Text("Create Reservation"),
                  Spacer(),
                  IconButton(
                    icon: Icon(Icons.close),
                    color: Colors.lightGreen,
                  )
                ],
              ),
              new Card(
                  child: ListTile(
                    leading: new Icon(Icons.calendar_today),
                    title: new Text("Date"),
                    onTap: () {
                      _selectDate(context);

                    },
                  )
              ),
              new Card(
                child: ListTile(
                  leading: new Icon(Icons.alarm),
                  title: new Text('Time'),
                  onTap: (){},
                ),
              ),
              new Card(
                child: ListTile(
                  leading: new Icon(Icons.timer),
                  title: new Text('Length'),
                  onTap: (){},
                ),
              ),
              new Card(
                child: ListTile(
                  leading: new Icon(Icons.add_location),
                  title: new Text('Park'),
                  onTap: (){},
                ),
              ),
              new Card(
                child: ListTile(
                  leading: new Icon(Icons.filter_1),
                  title: new Text('Court Number(s)'),
                  onTap: (){},
                ),
              ),
              new Row(
                children: <Widget> [
                  Spacer(),
                  OutlineButton(
                    child: Text(
                        "Clear"
                    ),
                  ),
                  Spacer(),
                  OutlineButton(
                    child: Text(
                        "Submit"
                    ),
                  ),
                  Spacer(),

                ],
              )
            ],
          );
        });
  }






}


