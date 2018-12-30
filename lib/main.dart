import 'package:flutter/material.dart';

import 'package:nav_testing2/routes/home_route.dart';
import 'package:nav_testing2/routes/a_route.dart';
import 'package:nav_testing2/routes/b_route.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
    title: 'Nav Testing 2',
    theme: ThemeData(
      primarySwatch: Colors.green,
    ),
    initialRoute: "/",
    routes: {
      "/": (context) => HomePage(),
      "/a": (context) => APage(),
      "/b": (context) => BPage(),
    },
  );
}

