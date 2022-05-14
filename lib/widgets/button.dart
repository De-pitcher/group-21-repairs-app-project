import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String text;
  final Color? color;
  const AppButton({Key? key, required this.text, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          text,
          style: const TextStyle(
            fontFamily: 'Source Sans Pro',
            fontSize: 20.0,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold,
          ),
        ),
        style: ElevatedButton.styleFrom(
          elevation: 8.0,
          primary: color,
        ),
      ),
    );
  }
}
