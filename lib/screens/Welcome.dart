import 'package:flutter/material.dart';
import 'package:wallet_app/screens/home.dart';
import 'package:wallet_app/screens/login.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 10), () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => Login()));
    });
    return MaterialApp(
        home: Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Center(
            child: CircularProgressIndicator.adaptive(
              strokeWidth: 10,
              backgroundColor: Colors.white10,
            ),
          )
        ],
      ),
    ));
  }
}
