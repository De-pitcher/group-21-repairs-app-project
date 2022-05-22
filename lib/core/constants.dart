import 'package:flutter/material.dart';
import 'colors.dart';

const kBlackGreyTextStyle = TextStyle(
  fontSize: 17.0,
  fontStyle: FontStyle.normal,
  color: kBBlack,
);
const kGreyTextStyle = TextStyle(
  fontSize: 17.0,
  fontStyle: FontStyle.normal,
  color: Color(0xFF7B7B7B),
);
const kBlackSmallTextStyle = TextStyle(
  fontSize: 13,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.bold,
  color: kBlackText,
);

const kWhiteSmallTextStyle = TextStyle(
  fontSize: 13,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.bold,
  color: kWhiteLight,
);
const kBlackSmallerTextStyle = TextStyle(
  fontSize: 12,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.bold,
  color: kBlackText,
);
const kBiggerBlackTextStyle = TextStyle(
  fontFamily: 'Gotham',
  fontSize: 20.0,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.bold,
  color: kBBlack,
);
const kBigWhiteTextStyle = TextStyle(
  fontFamily: 'Gotham',
  height: 19.14,
  fontSize: 16.0,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.bold,
  color: kWhiteLight,
);
const kBigBlackTextStyle = TextStyle(
  fontFamily: 'Gotham',
  fontSize: 16.0,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.bold,
  color: kBBlack,
);
const kBlackButtonTextStyle = TextStyle(
  fontSize: 13,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.bold,
  color: kBBlack,
);
const kBiggerWhiteTextStyle = TextStyle(
  fontFamily: 'Gotham',
  fontSize: 20.0,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.bold,
  color: kWhiteLight,
);
const kTextFieldInputDecoration = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  hintText: 'Enter City Name',
  hintStyle: TextStyle(
    color: Colors.grey,
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(10.0),
    ),
    borderSide: BorderSide.none,
  ),
);
