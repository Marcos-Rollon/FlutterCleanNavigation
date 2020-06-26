import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final LoginPageDelegate delegate;

  const LoginPage({Key key, this.delegate}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("This is the login page"),
              FlatButton(
                child: Text("Login"),
                onPressed: () => delegate?.didLogin(),
              )
            ],
          ),
        ),
      ),
    );
  }
}

mixin LoginPageDelegate {
  void didLogin();
}
