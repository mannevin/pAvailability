import 'package:flutter/cupertino.dart';
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

  bool dateFilled = false;
  bool timeFilled;
  bool lengthFilled;
  bool parkFilled;
  bool numFilled;

  int hour;
  String hourString;

  DateTime _dateTime = DateTime.now();
  String date = "Date: " + DateTime.now().toString().split(" ")[0].split("-")[1]+ "-" + DateTime.now().toString().split(" ")[0].split("-")[2] + "      " +
      "Time: " + ((int.parse(DateTime.now().toString().split(" ")[1].split(".")[0].split(":")[0]) > 12) ? ((int.parse(DateTime.now().toString().split(" ")[1].split(".")[0].split(":")[0]) - 12)).toString() + DateTime.now().toString().split(" ")[1].split(".")[0].split(":")[1] + " P.M.": (int.parse(DateTime.now().toString().split(" ")[1].split(".")[0].split(":")[0])).toString()  + ":" +  DateTime.now().toString().split(" ")[1].split(".")[0].split(":")[1] + " A.M.");

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
  Widget dateTimePicker(build) {
    return SizedBox(
      height: 200,
      child: CupertinoDatePicker(
        initialDateTime: _dateTime,
        onDateTimeChanged: (dateTime) {
          setState(() {
            date = "Date: " + dateTime.toString().split(" ")[0].split("-")[1] + "-" + dateTime.toString().split(" ")[0].split("-")[2]  + "     " + "Time: " + dateTime.toString().split(" ")[1].split(".")[0].split(":")[0] + ":" + dateTime.toString().split(" ")[1].split(".")[0].split(":")[1] + " A.M.";
            if (int.parse(dateTime.toString().split(" ")[1].split(".")[0].split(":")[0]) > 12) {
              hour = int.parse(dateTime.toString().split(" ")[1].split(".")[0].split(":")[0]) - 12;
              hourString = hour.toString();
              date = "Date: " + dateTime.toString().split(" ")[0].split("-")[1] + "-" + dateTime.toString().split(" ")[0].split("-")[2]  + "     " + "Time: " + hourString + ":" + dateTime.toString().split(" ")[1].split(".")[0].split(":")[1] + " P.M.";

            }
            _dateTime = dateTime;
            dateFilled = true;

          });
        },
      ),
    );
  }
  Widget lengthPicker(build) {
    return SizedBox(
      height: 200,
      child: CupertinoDatePicker(
        initialDateTime: _dateTime,
        onDateTimeChanged: (dateTime) {
          setState(() {
            date = "Date: " + dateTime.toString().split(" ")[0].split("-")[1] + "-" + dateTime.toString().split(" ")[0].split("-")[2]  + "     " + "Time: " + dateTime.toString().split(" ")[1].split(".")[0].split(":")[0] + ":" + dateTime.toString().split(" ")[1].split(".")[0].split(":")[1] + " A.M.";
            if (int.parse(dateTime.toString().split(" ")[1].split(".")[0].split(":")[0]) > 12) {
              hour = int.parse(dateTime.toString().split(" ")[1].split(".")[0].split(":")[0]) - 12;
              hourString = hour.toString();
              date = "Date: " + dateTime.toString().split(" ")[0].split("-")[1] + "-" + dateTime.toString().split(" ")[0].split("-")[2]  + "     " + "Time: " + hourString + ":" + dateTime.toString().split(" ")[1].split(".")[0].split(":")[1] + " P.M.";

            }
            _dateTime = dateTime;
            dateFilled = true;

          });
        },
      ),
    );
  }

  showAlertDialogDateTime(BuildContext context) {
    // set up the buttons
    Widget closeButton = FlatButton(
      child: Text("Close"),
      onPressed: () {
        dateFilled = true;
        Navigator.of(context, rootNavigator: true).pop('dialog');
        updateBottomSheet();
      },
    );
    Widget continueButton = FlatButton(
      child: Text("Next"),
      onPressed:  () {
        dateFilled = true;
        Navigator.of(context, rootNavigator: true).pop('dialog');
        updateBottomSheet();
        showAlertDialogLength(context);

      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(

      title: Text("Date and Time"),
      content: SizedBox(width: MediaQuery.of(context).size.width*.9,child:dateTimePicker(build)),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      actions: [
        closeButton,
        continueButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return SizedBox(
          width: MediaQuery.of(context).size.width*.9,
          child: alert,
        );
      },
    );
  }
  showAlertDialogLength(BuildContext context) {
    // set up the buttons
    Widget closeButton = FlatButton(
      child: Text("Close"),
      onPressed: () {
        dateFilled = true;
        Navigator.of(context, rootNavigator: true).pop('dialog');
        updateBottomSheet();
      },
    );
    Widget continueButton = FlatButton(
      child: Text("Next"),
      onPressed:  () {
        dateFilled = true;
        Navigator.of(context, rootNavigator: true).pop('dialog');
        updateBottomSheet();

      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(

      title: Text("Reservation Length"),
      content: SizedBox(width: MediaQuery.of(context).size.width*.9,child:dateTimePicker(build)),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      actions: [
        closeButton,
        continueButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return SizedBox(
          width: MediaQuery.of(context).size.width*.9,
          child: alert,
        );
      },
    );
  }
  updateBottomSheet() {
    Navigator.of(context).pop();
    showBottomSheet();

  }

  showBottomSheet() {
    showModalBottomSheet<void>(context: context,
        builder: (BuildContext context) {

          return new ListView(

            children: <Widget>[

              new Row(

                children: [
                  Spacer(),
                  Center(
                    child: Text("Create Reservation", style: TextStyle(fontWeight: FontWeight.bold),)
                  ),
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
                    title: new Text(dateFilled ? date : "Date"),
                    onTap: () {
                      showAlertDialogDateTime(context);
                    },
                  )
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


