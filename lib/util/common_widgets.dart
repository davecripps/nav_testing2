import 'package:flutter/material.dart';

class CommonWidgets {

  static AppBar theAppBar(BuildContext context) => AppBar(
    title: Text("Doin' Nav Stuff"),
    actions: <Widget>[
      FlatButton(
        child: Text("Go to Home"),
        onPressed: () {
          Navigator.of(context).pushNamedAndRemoveUntil("/", (Route<dynamic> route) => false);
        },
      ),
      FlatButton(
        child: Text("Go to A"),
        onPressed: () {
          Navigator.of(context).pushNamedAndRemoveUntil("/a", (Route<dynamic>
          route) => false);
        },
      ),
      FlatButton(
        child: Text("Go to B"),
        onPressed: () {
          Navigator.of(context).pushNamedAndRemoveUntil("/b", (Route<dynamic> route) => false);
        },
      ),
    ],
  );

} // CommonWidgets