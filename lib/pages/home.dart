import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final HomePageDelegate delegate;

  const HomePage({Key key, this.delegate}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text("Home page"),
            FlatButton(
              child: Text("Logout"),
              onPressed: () {
                delegate?.didLogout();
              },
            )
          ],
        ),
      ),
    );
  }
}

mixin HomePageDelegate {
  void didLogout();
}
