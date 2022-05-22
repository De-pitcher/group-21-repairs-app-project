import 'package:flutter/material.dart';
import 'package:project_two/core/constants.dart';

class AppTextFormField extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  const AppTextFormField(
      {Key? key, required this.hintText, required this.obscureText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        elevation: 8.0,
        child: TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            hintText: hintText,
            hintStyle: const TextStyle(
              color: Colors.grey,
            ),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ),
    );
  }
}

//
//
// TextFormField(
// decoration: InputDecoration(
// enabledBorder: OutlineInputBorder(
// borderRadius: BorderRadius.circular(15.0),
// borderSide: BorderSide.none,
// ),
// labelText: hintText,
// border: const OutlineInputBorder(),
// focusedBorder: OutlineInputBorder(
// borderSide: BorderSide.none,
// borderRadius: BorderRadius.circular(15),
// ),
// filled: true,
// fillColor: const Color.fromRGBO(255, 254, 254, 1),
// ),
// obscureText: obscureText,
// ),
