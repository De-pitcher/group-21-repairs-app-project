import 'package:flutter/material.dart';
import 'package:project_two/core/colors.dart';
import 'package:project_two/screens/login.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  decideNavigation() {
    Future.delayed(
      const Duration(seconds: 2),
      () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const Login(),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    decideNavigation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBlueBlue,
      body: GestureDetector(
        onTap: () => Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => const Login(),
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const <Widget>[
              Image(
                image: AssetImage(
                  'images/homelogo.png',
                ),
                width: 121.65,
                height: 83.47,
              ),
              Image(
                image: AssetImage(
                  'images/homerepair.png',
                ),
                width: 223,
                height: 34,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
