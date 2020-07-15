import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'tennis.dart';
import 'package:geolocator/geolocator.dart';
import 'dart:math' show cos, sqrt, asin;
import 'package:rflutter_alert/rflutter_alert.dart';




class courtOutline extends StatefulWidget {

  bool check;
  String court;
  courtOutline(String courtName, bool checked) {
    check = checked;
    court = courtName;

  }
  @override
  _courtOutlineState createState() => _courtOutlineState(court, check);
}

class _courtOutlineState extends State<courtOutline> {

  String courtName;
  bool check;
  _courtOutlineState(String court, checked) {

    courtName = court;
    check = checked;

  }
  int numCourts = 0;
  bool bathrooms = false;
  bool lights = false;
  String address;
  Position courtPosition;
  double lat;
  double long;

  double dis;

  double currentLat, currentLong;

  String value;

  bool toggleValue = false;

  void _getCourtInfo(String courtName) {
    switch (courtName) {
      case ("Grogan's Point Park"): {
        numCourts = 2;
        lights = true;
        bathrooms = true;
        address = "100 Grogans Point Rd";
        //lat = 30.119880;
        //long = -95.486930;
        lat = currentLat;
        long = currentLong;
      }
      break;
      case ("Sawmill Park"): {
        numCourts = 5;
        lights = true;
        bathrooms = true;
        address = "2200 Millpark Dr";
        lat = 30.135700;
        long = -95.467250;
      }
      break;
      case ("Tamarac Park"): {
        numCourts = 2;
        lights = true;
        bathrooms = true;
        address = "1300 N Millbend Dr";
        lat = 30.152170;
        long = -95.456300;
      }
      break;
      case ("Creekwood Park"): {
        numCourts = 3;
        lights = true;
        bathrooms = true;
        address = "3383 S Panther Creek Dr";
        lat = 30.155400;
        long = -95.493930;
      }
      break;
      case ("Meadowlake Park"): {
        numCourts = 4;
        lights = true;
        bathrooms = true;
        address = "9501 N Panther Creek Dr";
        lat = 30.168347;
        long = -95.484658;
      }
      break;
      case ("Ridgewood Park"): {
        numCourts = 4;
        lights = true;
        bathrooms = true;
        address = "4192 Interfaith Way";
        lat = 30.16573664098677;
        long = -95.49796834765286;
      }
      break;
      case ("Bear Branch Park"): {
        numCourts = 11;
        lights = true;
        bathrooms = true;
        address = "5200 Research Forest Dr";
        lat = 30.2022528204199;
        long = -95.511483653589;
      }
      break;
      case ("Capstone Park"): {
        numCourts = 2;
        lights = true;
        bathrooms = true;
        address = "155 Capstone Cir";
        lat = 30.1949685413154;
        long = -95.5131293510616;
      }
      break;
      case ("Cattail Park"): {
        numCourts = 2;
        lights = true;
        bathrooms = true;
        address = "9323 Cochrans Crossing Dr";
        lat = 30.1904322276057;
        long = -95.5247954346781;
      }
      break;
      case ("Copper Sage Park"): {
        numCourts = 2;
        lights = true;
        bathrooms = false;
        address = "75 S Golden Arrow Cir";
        lat = 30.181320765098;
        long = -95.5313210756681;
      }
      break;
      case ("Mystic Forest Park"): {
        numCourts = 2;
        lights = false;
        bathrooms = true;
        address = "10 E. Amberglow Cir";
        lat = 30.2028313668061;
        long = -95.5084792145003;
      }
      break;
      case ("Shadowbend Park"): {
        numCourts = 5;
        lights = true;
        bathrooms = true;
        address = "4995 Lake Woodlands Dr";
        lat = 30.1652949;
        long = -95.4642812;
      }
      break;
      case ("Falconwing Park"): {
        numCourts = 2;
        lights = true;
        bathrooms = true;
        address = "5610 Rush Haven Dr";
        lat = 30.1720528;
        long = -95.52072684;
      }
      break;
      case ("Forestgate Park"): {
        numCourts = 2;
        lights = true;
        bathrooms = true;
        address = "7505 S Forestgate Dr";
        lat = 30.1795248094704;
        long = -95.5428482330743;
      }
      break;
      case ("Alden Bridge Park"): {
        numCourts = 4;
        lights = true;
        bathrooms = true;
        address = "7725 Alden Bridge Dr";
        lat = 30.2179397;
        long = -95.5256779;
      }
      break;
      case ("Lakeside Park"): {
        numCourts = 4;
        lights = true;
        bathrooms = true;
        address = "5001 S Alden Bridge Dr";
        lat = 30.20471272445914;
        long = -95.54402895862872;
      }
      break;
      case ("Sundance Park"): {
        numCourts = 2;
        lights = true;
        bathrooms = false;
        address = "3700 West Alden Bridge Drive";
        lat = 30.218665331127195;
        long = -95.51704286885756;
      }
      break;
      case ("Windvale Park"): {
        numCourts = 2;
        lights = true;
        bathrooms = true;
        address = "7600 E. Windvale Cir";
        lat = 30.2230921;
        long = -95.5047951;
      }
      break;
      case ("Cranebrook Park"): {
        numCourts = 4;
        lights = true;
        bathrooms = true;
        address = "S Queenscliff Cir";
        lat = 30.184683;
        long = -95.572822;
      }
      break;
      case ("May Valley Park"): {
        numCourts = 2;
        lights = true;
        bathrooms = true;
        address = "11598 May Valley Cir";
        lat = 30.1744246;
        long = -95.5944362;
      }
      break;
      case ("Pepperdale Park"): {
        numCourts = 2;
        lights = true;
        bathrooms = false;
        address = "17 North Pentenwell Circle";
        lat = 30.1896059649565;
        long = -95.5811955674445;
      }
      break;
      case ("Terramont Park"): {
        numCourts = 2;
        lights = true;
        bathrooms = true;
        address = "8500 Terramont Dr";
        lat = 30.2014802;
        long = -95.556089;
      }
      break;
      case ("Avalon Park"): {
        numCourts = 2;
        lights = true;
        bathrooms = true;
        address = "8585 Grogans Mill Rd";
        lat = 30.154914;
        long = -95.4731017;
      }
      break;
      case ("Harper's Landing Park"): {
        numCourts = 2;
        lights = true;
        bathrooms = true;
        address = "2 Blair Bridge Dr";
        lat = 30.21701094479089;
        long = -95.44856734113989;
      }
      break;
      case ("Timarron Park"): {
        numCourts = 2;
        lights = true;
        bathrooms = true;
        address = "550 North Green Print Circle";
        lat = 30.15595152753505;
        long = -95.55330376015246;
      }
      break;
      case ("Tupelo Park"): {
        numCourts = 2;
        lights = true;
        bathrooms = true;
        address = "240 W Tupelo Green Cir";
        lat = 30.1471757;
        long = -95.5298872;
      }
      break;
      case ("Wendtwood Park"): {
        numCourts = 4;
        lights = true;
        bathrooms = true;
        address = "8950 Creekside Green Dr";
        lat = 30.139645;
        long = -95.5572557;
      }

      break;
    }
  }


  void _getCurrentLocation() async {
    final position = await Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    currentLat = position.latitude;
    currentLong = position.longitude;
  }



  checkedMethod() {
    check = !check;
    print(check);
    _courtOutlineState(courtName, check);
    build(context);
  }
  double calculateDistance(lat1, lon1, lat2, lon2){
    var p = 0.017453292519943295;
    var c = cos;
    var a = 0.5 - c((lat2 - lat1) * p)/2 +
        c(lat1 * p) * c(lat2 * p) *
            (1 - c((lon2 - lon1) * p))/2;
    return 12742 * asin(sqrt(a));
  }
  Future back(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => tennis()));
  }
  List<bool> isSelected = [false];

  @override
  Widget build(BuildContext context) {

    _getCourtInfo(courtName);
    return Scaffold(

        appBar: AppBar(
          title: Text(
            courtName,
            style: TextStyle(
                fontFamily: 'SourceSansPro'
            ),
          ),
          backgroundColor: Colors.lightGreen,
          leading: IconButton(icon: Icon(
              Icons.arrow_back_ios),
            onPressed: () {
              back(context);
            },
          ),),
        body: boxDecor()

    );

  }

  Widget boxDecor() {
    return Container(
      margin: const EdgeInsets.all(15.0),
      padding: const EdgeInsets.all(10.0),
      decoration: myBoxDecoration(

      ), //       <--- BoxDecoration here
      child: Column(
        children: <Widget>[
          SizedBox(
            height: MediaQuery.of(context).size.height*.025,
          ),
          Row(
            children: <Widget> [
              SizedBox(width: MediaQuery.of(context).size.height*.025,),
              Text(
                "Park: ",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17
                ),
              ),
              SizedBox(width: MediaQuery.of(context).size.height*.025*(8/20),),
              Text(
                courtName,
                style: TextStyle(
                    fontSize: 17
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height*.025,
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: MediaQuery.of(context).size.height*.025,
              ),
              Text(
                "Address: ",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17
                ),
              ),
              Text(
                address,
                style: TextStyle(
                    fontSize: 17
                ),
              ),




            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height*.025,
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: MediaQuery.of(context).size.height*.025,
              ),
              Text(
                "Courts: ",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17
                ),
              ),
              Text(
                numCourts.toString(),
                style: TextStyle(
                    fontSize: 17
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height*.025,
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: MediaQuery.of(context).size.height*.025,
              ),
              Text(
                "Bathrooms: ",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17
                ),
              ),
              Text(
                (bathrooms ? "Yes" : "No") ,
                style: TextStyle(
                    fontSize: 17
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height*.025,
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: MediaQuery.of(context).size.height*.025,
              ),
              Text(
                "Lights: ",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17
                ),
              ),
              SizedBox(width: MediaQuery.of(context).size.height*.025 * (8/20),),
              Text(
                (lights ? "Yes" : "No"),
                style: TextStyle(
                    fontSize: 17
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height*.37,
          ),

          AnimatedContainer(
            duration: Duration(milliseconds: 400),
            height: 40,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.grey.withOpacity(.5)
            ),
            child: Stack(
              children: <Widget>[
                AnimatedPositioned(
                  duration: Duration(milliseconds: 400),
                  curve: Curves.easeIn,
                  top: 3.0,
                  left: toggleValue ? 60 : 0,
                  right: toggleValue ? 0 : 60,
                  child: InkWell(
                    onTap: toggleButton,
                    child: AnimatedSwitcher(
                      duration: Duration(milliseconds: 400),
                      transitionBuilder:
                          (Widget child, Animation<double> animation) {
                        return RotationTransition(
                            child: child, turns: animation);
                      },
                      child: toggleValue ? Icon(Icons.check_circle, color: Colors.lightGreen, size: 35,
                      key: UniqueKey()
                      ) : Icon(Icons.remove_circle_outline, color: Colors.redAccent, size: 35,
                      key: UniqueKey()
                      )
                    ),
                  ),
                )
              ],
            ),
          ),


          SizedBox(
            height: MediaQuery.of(context).size.height*.025,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height*.025*(5/2),
            width: MediaQuery.of(context).size.width,
            child: OutlineButton(
              child: Text(
                "Reserve " + courtName,
                style: TextStyle(
                    fontSize: 15
                ),
              ),
              onPressed: () {

              },
              highlightColor: Colors.lightGreen,
              highlightedBorderColor: Colors.black,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              highlightElevation: 0,
              borderSide: BorderSide(color: Colors.grey, width: MediaQuery.of(context).size.height*.025*3/20),
            ),
          )
        ],
      ),
    );
  }
  BoxDecoration myBoxDecoration() {
    return BoxDecoration(
      border: Border.all(
          width: MediaQuery.of(context).size.height*.025 * (3/20),
          color: Colors.grey
      ),
      borderRadius: BorderRadius.all(
          Radius.circular(7.0) //         <--- border radius here
      ),
    );
  }

  toggleButton() {
    setState(() {
      toggleValue = !toggleValue;
      if (toggleValue) {
        _getCurrentLocation();
        dis = calculateDistance(currentLat, currentLong, lat, long);
        if (dis <= .5) {

        } else {
          toggleValue = !toggleValue;
          Alert(

            context: context,
            style: alertStyle,
            type: AlertType.info,
            title: "Failed Checkin",
            desc: "Make sure your location is on and you are at the court",

            buttons: [
              DialogButton(
                child: Text(
                  "OK",

                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                onPressed: () => Navigator.of(context, rootNavigator: true).pop(),
                color: Colors.lightGreen,
                radius: BorderRadius.circular(15.0),
              ),
            ],
          ).show();
        }
      }
    });
  }


  void showDialog() {
    showGeneralDialog(
      barrierLabel: "Barrier",
      barrierDismissible: true,
      barrierColor: Colors.black.withOpacity(0.5),
      transitionDuration: Duration(milliseconds: 300),
      context: context,
      pageBuilder: (_, __, ___) {
        return Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: MediaQuery.of(context).size.height*.025*5,
            child: SizedBox.expand(
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: OutlineButton(

                ),
              )
            ),
            margin: EdgeInsets.only(bottom: 50, left: 12, right: 12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(40),
            ),

          ),
        );
      },
      transitionBuilder: (_, anim, __, child) {
        return SlideTransition(
          position: Tween(begin: Offset(0, 1), end: Offset(0, 0)).animate(anim),
          child: child,
        );
      },
    );
  }

}
var alertStyle = AlertStyle(
  animationType: AnimationType.fromTop,
  isCloseButton: false,
  isOverlayTapDismiss: false,
  descStyle: TextStyle(fontWeight: FontWeight.bold),
  animationDuration: Duration(milliseconds: 400),
  alertBorder: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(0.0),
    side: BorderSide(
      color: Colors.grey,
    ),
  ),
  titleStyle: TextStyle(
    color: Colors.red,
  ),
);