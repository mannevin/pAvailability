import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wtparkavailability/WelcomePage.dart';
import 'home.dart';
import 'BodyLayout.dart';
import 'package:url_launcher/url_launcher.dart';
import 'WelcomePage.dart';
import 'GoogleSignIn.dart';
import 'package:numberpicker/numberpicker.dart';



class tennis extends StatelessWidget {
  tennis({bool signInGoogle, bool signInFacebook}) {

  }

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
  bool nameFilled = false;
  bool timeFilled;
  bool lengthFilled;
  bool parkFilled;
  bool numFilled;

  bool confirm = false;

  int hour;
  String hourString;

  bool signedIn = false;
  bool googleSI = false;
  bool facebookSI = false;
  bool emailPNSI = false;

  String fullName = " ";

  var time = 1;

  bool currentReservations = false;

  bool showalert;
  final String phone = 'tel:+2812103800';

  String reservationName = "";

  DateTime _dateTime = DateTime.now();
  String date = "Date: " + DateTime.now().toString().split(" ")[0].split("-")[1]+ "-" + DateTime.now().toString().split(" ")[0].split("-")[2] + "      " +
      "Time: " + ((int.parse(DateTime.now().toString().split(" ")[1].split(".")[0].split(":")[0]) > 12) ? ((int.parse(DateTime.now().toString().split(" ")[1].split(".")[0].split(":")[0]) - 12)).toString() + DateTime.now().toString().split(" ")[1].split(".")[0].split(":")[1] + " P.M.": (int.parse(DateTime.now().toString().split(" ")[1].split(".")[0].split(":")[0])).toString()  + ":" +  DateTime.now().toString().split(" ")[1].split(".")[0].split(":")[1] + " A.M.");

  @override
  Widget build(BuildContext context) {
    return Scaffold(


        floatingActionButtonLocation:
        FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.lightGreen,
          child: const Icon(Icons.add), onPressed: () {
            showFirstScreen();

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
                    icon: Icon(
                        Icons.info_outline,
                      color: Colors.lightGreen,
                    ),
                    onPressed: () {
                      showCourtInfoSheet();
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
                    icon: Icon(
                        Icons.account_circle,
                        color: Colors.lightGreen,
                    ),
                    onPressed: () {
                      showAccountSheet();
                    },),

                ],
              ),
            ],
          ),
        ),
        body: BodyLayout()




    );
  }
  _callPhone() async {
    if (await canLaunch(phone)) {
      await launch(phone);
    } else {
      throw 'Could not Call Phone';
    }
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
  Widget namePicker(build) {
    return SizedBox(
      height: 100,
      child: TextFormField(
        onChanged: (text) {
          reservationName = text;

        },
        decoration: InputDecoration(
            labelText: 'Reservation Name'
        ),
      )
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

      },
    );
    Widget clearButton = FlatButton(
      child: Text("Clear"),
      onPressed: () {
        dateFilled = false;
        Navigator.of(context, rootNavigator: true).pop('dialog');
        updateBottomSheet();
      }
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(

      title: Text("Date and Time"),
      content: SizedBox(width: MediaQuery.of(context).size.width*.9,child:dateTimePicker(build)),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      actions: [
        closeButton,
        clearButton,
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
  showAlertDialogName(BuildContext context) {
    // set up the buttons
    Widget closeButton = FlatButton(
      child: Text("Close"),
      onPressed: () {

        Navigator.of(context, rootNavigator: true).pop('dialog');
        updateBottomSheet();
      },
    );
    Widget continueButton = FlatButton(
      child: Text("Next"),
      onPressed:  () {
        print(reservationName);
        nameFilled = true;
        Navigator.of(context, rootNavigator: true).pop('dialog');
        updateBottomSheet();
        showAlertDialogDateTime(context);

      },
    );
    Widget clearButton = FlatButton(
        child: Text("Clear"),
        onPressed: () {
          nameFilled = false;
          Navigator.of(context, rootNavigator: true).pop('dialog');
          updateBottomSheet();
        }
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(

      title: Text("Reservation Name"),
      content: SizedBox(width: MediaQuery.of(context).size.width*.9,child:namePicker(build)),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      actions: [
        closeButton,
        clearButton,
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
  emailReceiptAlert(BuildContext context) {
    // set up the buttons
    Widget cancelButton = FlatButton(
      child: Text("Cancel"),
      onPressed: () {
        Navigator.of(context, rootNavigator: true).pop('dialog');
      },
    );
    Widget confirmButton = FlatButton(
      child: Text("Confirm"),
      onPressed: () {
        if (dateFilled == true) {
          Navigator.of(context, rootNavigator: true).pop('dialog');
          emailReceiptAlert2(context);
        }
        else {
          Navigator.of(context, rootNavigator: true).pop('dialog');
          emailReceiptAlert3(context);
        }

      },
    );


    // set up the AlertDialog
    AlertDialog alert = AlertDialog(

      title: Text("Confirmation"),
      content: SizedBox(width: MediaQuery.of(context).size.width*.9,child:Text("Are you sure you want to make this reservation?")),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      actions: [
        cancelButton,
        confirmButton
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
  emailReceiptAlert2(BuildContext context) {
    // set up the buttons
    Widget cancelButton = FlatButton(
      child: Text("Close"),
      onPressed: () {
        Navigator.of(context, rootNavigator: true).pop('dialog');
        Navigator.of(context).pop();
        showFirstScreen();
      },
    );



    // set up the AlertDialog
    AlertDialog alert = AlertDialog(

      title: Text("Email Receipt"),
      content: SizedBox(width: MediaQuery.of(context).size.width*.9,
          child: SizedBox(
            height: MediaQuery.of(context).size.height*.15,
            child: ListView(
              children: <Widget>[

                    Icon(Icons.email, size: MediaQuery.of(context).size.height*.05),
                    SizedBox(
                        height: MediaQuery.of(context).size.height*.01
                    ),
                    Text("A confirmation receipt email has been sent to you. To cancel, go to your reservations page.")

              ],
            )
          )),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      actions: [
        cancelButton,

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
  emailReceiptAlert3(BuildContext context) {
    // set up the buttons
    Widget cancelButton = FlatButton(
      child: Text("Close"),
      onPressed: () {
        Navigator.of(context, rootNavigator: true).pop('dialog');

      },
    );



    // set up the AlertDialog
    AlertDialog alert = AlertDialog(

      title: Text("Request Error"),
      content: SizedBox(width: MediaQuery.of(context).size.width*.9,
          child:SizedBox(
              height: MediaQuery.of(context).size.height*.15,
              child: ListView(
                children: <Widget>[

                  Icon(Icons.add_alert, size: MediaQuery.of(context).size.height*.05),
                  SizedBox(
                      height: MediaQuery.of(context).size.height*.01
                  ),
                  Text("Please make sure you have filled all fields.")

                ],
              )
          )),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      actions: [
        cancelButton,

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
  showFirstScreen() {
    showModalBottomSheet<void>(context: context,
        builder: (BuildContext context) {
          return Scaffold(
            body: Center(
              child: ListView(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                          "Reservations",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16

                        ),
                      ),
                      Spacer(),
                      IconButton(
                        icon: Icon(Icons.cancel),
                        color: Colors.lightGreen,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      )
                    ],
                  ),
                  currentReservations ? Text("Reservations are present") : Center(child: Text("No current reservations"))
                ],
              ),
            ),
            floatingActionButton: FloatingActionButton(

              backgroundColor: Colors.lightGreen,
              foregroundColor: Colors.white,
              mini: false,
              onPressed: () {
                Navigator.pop(context);
                showBottomSheet();
              },
              child: Icon(Icons.add),

            ),
          );

        });

  }

  showBottomSheet() {
    showModalBottomSheet<void>(context: context,
        builder: (BuildContext context) {

          return new ListView(

            children: <Widget>[

              new Row(

                children: [

                  IconButton(
                    icon: Icon(Icons.keyboard_backspace),
                    color: Colors.lightGreen,
                    onPressed: () {
                      Navigator.pop(context);
                      showFirstScreen();

                    },
                  ),
                  Center(
                    child: Text("Create Reservation", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),)
                  ),
                  Spacer(),
                  IconButton(
                    icon: Icon(Icons.close),
                    color: Colors.lightGreen,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  )
                ],
              ),
              new Card(
                child: ListTile(
                  leading: new Icon(Icons.text_format),
                  title: new Text(nameFilled ? "Name: " + reservationName : "Reservation Name"),
                  onTap: () {
                    showAlertDialogName(context);
                  }
                )
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
                  onTap: (){

                  },
                ),
              ),
              new Card(
                child: ListTile(
                  leading: new Icon(Icons.add_location),
                  title: new Text('Park'),
                  onTap: (){

                  },
                ),
              ),
              new Card(
                child: ListTile(
                  leading: new Icon(Icons.filter_1),
                  title: new Text('Court Number(s)'),
                  onTap: (){

                  },
                ),
              ),
              new Card(
                child: ListTile(
                  leading: new Icon(Icons.refresh),
                  title: new Text('Recurring Dates'),
                  onTap: (){

                  },
                ),
              ),
              new Row(
                children: <Widget> [
                  Spacer(),
                  SizedBox(
                    width: MediaQuery.of(context).size.width*.4,
                    child: OutlineButton(
                      child: Text(
                          "Clear"
                      ),
                      onPressed: () {
                        dateFilled = false;
                        Navigator.of(context).pop();
                        showBottomSheet();
                      },
                    ),
                  ),
                  Spacer(),
                  SizedBox(
                    width: MediaQuery.of(context).size.width *.4,
                    child: OutlineButton(
                      onPressed: () {
                        emailReceiptAlert(context);
                      },
                      child: Text(
                          "Submit"
                      ),
                    ),
                  ),
                  Spacer(),

                ],
              )
            ],

          );
        });

  }

  showCourtInfoSheet() {

    showModalBottomSheet<void>(context: context, shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15.0),
    ),
        builder: (BuildContext context) {
          return new ListView(

            children: <Widget>[


              new Row(

                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width*.025,
                  ),
                  Center(
                      child: Text("Court Registration Information", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),)
                  ),
                  Spacer(),
                  IconButton(
                    icon: Icon(Icons.close),
                    color: Colors.lightGreen,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Spacer(),

                  InkWell(
                      child: new Text(
                        'Frequently Asked Questions (FAQ)',
                        style: TextStyle(
                            color: Colors.blue,
                            fontStyle: FontStyle.italic,
                            decoration: TextDecoration.underline,
                            fontSize: 15
                        ),
                      ),
                      onTap: () => launch('https://www.thewoodlandstownship-tx.gov/faq.aspx?TID=32')
                  ),
                  Spacer()
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*.01,
              ),
              Row(
                children: <Widget>[
                  SizedBox(
                    width: MediaQuery.of(context).size.width*.025,
                  ),
                  Text(
                    "Pricing: ",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)

                  ),
                  Text(
                      "Each court is \$8 per court per hour",
                      style: TextStyle(fontSize: 15)

                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.01,
              ),
              Row(
                children: <Widget>[
                  SizedBox(
                    width: MediaQuery.of(context).size.width*.025,
                  ),
                  Text(
                      "Minimum Reservation Time: ",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)

                  ),
                  Text(
                      "One Hour",
                      style: TextStyle(fontSize: 15)

                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.01,
              ),
              Row(
                children: <Widget>[
                  SizedBox(
                    width: MediaQuery.of(context).size.width*.025,
                  ),
                  Text(
                      "Payment Options: ",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)

                  ),
                  Text(
                      "In-person, Call, App-Based",
                      style: TextStyle(fontSize: 15)

                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.01,
              ),
              Row(
                children: <Widget>[
                  SizedBox(
                    width: MediaQuery.of(context).size.width*.025,
                  ),
                  Text(
                      "Contact Us: ",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)

                  ),
                  InkWell(
                      child: new Text(
                        '(281) 210 3800',
                        style: TextStyle(
                            color: Colors.blue,
                            fontStyle: FontStyle.italic,
                            decoration: TextDecoration.underline,
                            fontSize: 15
                        ),
                      ),

                      onTap: () {_callPhone();}
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.01,
              ),
              Row(
                children: <Widget>[
                  Spacer(),
                  Text(
                      "Woodlands Township Address ",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)

                  ),
                  Spacer(),

                ],
              ),
              Row(
                children: <Widget>[
                  Spacer(),
                  InkWell(
                      child: new Text(
                        ' 2801 Technology Forest Boulevard',
                        style: TextStyle(
                            color: Colors.blue,
                            fontStyle: FontStyle.italic,
                            decoration: TextDecoration.underline,
                            fontSize: 15
                        ),
                      ),

                      onTap: () {_callPhone();}
                  ),
                  Spacer(),
                ],
              )

            ],

          );
    });
  }



  showAccountSheet() {
    showModalBottomSheet<void>(context: context, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),

        builder: (BuildContext context) {

          return signedIn ? (googleSI ? GoogleSignIn() : (facebookSI ? GoogleSignIn() : (emailPNSI ? emailPNSignIn() : WelcomePage()))) : WelcomePage();
        });

  }



  Widget emailPNSignIn() {
    return Scaffold(
        body: Center(
          child: Column(
            children: <Widget>[
              Text("Signed in With Email/Phone Number")
            ],
          ),
        )
    );
  }







}




