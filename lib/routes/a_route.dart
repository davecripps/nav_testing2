import 'package:flutter/material.dart';

import 'package:nav_testing2/util/common_widgets.dart';

class APage extends StatelessWidget {

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: CommonWidgets.theAppBar(context),
    body: Center(
      child: Text("Here is the A page."),
    ),
  );

}