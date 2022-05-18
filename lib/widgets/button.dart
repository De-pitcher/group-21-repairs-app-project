import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  AppButton({required this.text, this.color, this.style});
  final String text;
  final Color? color;
  final TextStyle? style;

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
          style: style,
        ),
        style: ElevatedButton.styleFrom(
          elevation: 8.0,
          primary: color,
        ),
      ),
    );
  }
}

class WhiteButton extends StatelessWidget {
  final AssetImage image;
  const WhiteButton({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SizedBox(
          height: 63,
          width: 99,
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              backgroundColor: const Color(0xFFFFFFFF),
            ),
            onPressed: () {},
            child: Image(
              image: image,
            ),
          ),
        ),
      ),
    );
  }
}
