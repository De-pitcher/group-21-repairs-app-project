import 'package:flutter/material.dart';
import 'package:project_two/screens/cart.dart';
import 'package:project_two/screens/create_account.dart';
import 'package:project_two/screens/home.dart';
import 'package:project_two/screens/menu.dart';
import 'package:project_two/screens/microwave.dart';

import 'screens/login.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Group 21',
      initialRoute: '/login',
      routes: {
        '/login': (BuildContext context) => const MicrowaveScreen(),
      },
    );
  }
}
