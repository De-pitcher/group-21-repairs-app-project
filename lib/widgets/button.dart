import 'package:flutter/material.dart';
import 'package:project_two/core/colors.dart';

class AppButton extends StatelessWidget {
  AppButton({required this.text, this.color, this.style, this.onPressed});
  final String text;
  final Color? color;
  final TextStyle? style;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 63,
      width: 357,
      padding: const EdgeInsets.all(8.0),
      child: OutlinedButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: style,
        ),
        style: OutlinedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
// ElevatedButton(
// onPressed: onPressed,
// child: Text(
// text,
// style: style,
// ),
// style: ElevatedButton.styleFrom(
// elevation: 8.0,
// primary: color,
// ),
// ),

class WhiteButton extends StatelessWidget {
  final AssetImage image;
  const WhiteButton({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Material(
          elevation: 8.0,
          child: SizedBox(
            height: 63,
            width: 99,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: BorderSide.none,
                backgroundColor: const Color(0xFFFFFFFF),
              ),
              onPressed: () {},
              child: Image(
                image: image,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
