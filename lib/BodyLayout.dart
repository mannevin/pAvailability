import 'package:flutter/material.dart';
import 'court_outline.dart';
import 'tennis.dart';
import 'package:wtparkavailability/widgets/fullList.dart';
class BodyLayout extends StatefulWidget {
  @override
  _BodyLayoutState createState() => _BodyLayoutState();
}

class _BodyLayoutState extends State<BodyLayout> {
  String courtName;
  @override
  Widget build(BuildContext context) {

    return _myListView(context);

  }

  Widget _myListView(BuildContext context) {




    return FullList();

  }
}

