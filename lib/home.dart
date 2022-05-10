import 'package:flutter/material.dart';
import 'package:project_two/colors.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: dColorDarkBlue,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const Image(
            image: AssetImage(
              'images/homelogo.png',
            ),
          ),
          const Image(
            image: AssetImage(
              'images/homerepair.png',
            ),
          ),
          Container(
            width: double.infinity,
          )
        ],
      ),
    );
  }
}
