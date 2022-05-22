import 'package:flutter/material.dart';

import '../core/colors.dart';
import '../core/constants.dart';

class CartFoldingField extends StatelessWidget {
  const CartFoldingField(
      {Key? key,
      required this.child,
      required this.titleText,
      required this.priceText})
      : super(key: key);
  final Widget child;
  final String titleText;
  final String priceText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 63.0,
      width: 435.0,
      decoration: const BoxDecoration(
        color: kPrimaryColor3,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Row(
        children: [
          const SizedBox(
            width: 20.0,
          ),
          Card(
            shape: RoundedRectangleBorder(
              side: BorderSide.none,
              borderRadius: BorderRadius.circular(10),
            ),
            color: kPrimaryColor3,
            child: child,
          ),
          const SizedBox(
            width: 30.0,
          ),
          SizedBox(
            width: 220.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  titleText,
                  style: kBlackSmallTextStyle,
                ),
              ],
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                priceText,
                style: kBlackSmallTextStyle,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
