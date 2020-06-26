import 'package:flutter/material.dart';

class HelpPage extends StatelessWidget {
  final String parameter;

  const HelpPage(this.parameter, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.purple,
        child: Center(
          child: Text("Help page with parameter $parameter"),
        ),
      ),
    );
  }
}
