import 'package:flutter/material.dart';
import 'package:wallet_app/screens/Welcome.dart';
import 'package:wallet_app/screens/add_card.dart';
import 'package:wallet_app/screens/detail_card.dart';
import 'package:wallet_app/screens/home.dart';
import 'package:wallet_app/screens/login.dart';
import 'package:wallet_app/screens/notifications.dart';
import 'package:wallet_app/screens/profile_settings.dart';
import 'package:wallet_app/screens/stats.dart';
import 'package:wallet_app/screens/settings.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // route:
    // <String, WidgetBuilder>{'/': (context) => const Welcome()};

    return const MaterialApp(
      home: Home(),
    );
  }
}
