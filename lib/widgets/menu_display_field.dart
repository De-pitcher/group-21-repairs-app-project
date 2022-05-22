import 'package:flutter/material.dart';

import '../core/colors.dart';
import '../core/constants.dart';

class MenuDisplayField extends StatelessWidget {
  const MenuDisplayField(
      {Key? key,
      required this.image,
      required this.titleText,
      required this.desText,
      this.priceText})
      : super(key: key);
  final AssetImage image;
  final String titleText;
  final String desText;
  final String? priceText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 63.0,
      width: 357.0,
      decoration: const BoxDecoration(
        color: kPrimaryColor3,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Row(
        children: [
          const SizedBox(
            width: 10.0,
          ),
          Card(
            shape: RoundedRectangleBorder(
              side: BorderSide.none,
              borderRadius: BorderRadius.circular(5),
            ),
            color: const Color(0xFFC7D9FF),
            child: Image(
              image: image,
              height: 40,
              width: 40,
            ),
          ),
          const SizedBox(
            width: 20.0,
          ),
          SizedBox(
            width: 200.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  titleText,
                  style: kBlackSmallTextStyle,
                ),
                Text(
                  desText,
                  style: kBlackSmallerTextStyle,
                ),
              ],
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const [
              Icon(
                Icons.arrow_forward_ios,
                color: kBBlack,
                size: 15,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
