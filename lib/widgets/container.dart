import 'package:flutter/material.dart';

import '../core/colors.dart';
import '../core/constants.dart';

class CardContainer extends StatelessWidget {
  const CardContainer(
      {Key? key,
      required this.titleText,
      required this.bodyText,
      required this.titleCardColor,
      required this.containerImage,
      required this.bodyCardColor})
      : super(key: key);

  final String titleText;
  final String bodyText;
  final Color titleCardColor;
  final Color bodyCardColor;
  final AssetImage containerImage;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Column(
          children: <Widget>[
            Container(
              height: 60,
              decoration: BoxDecoration(
                color: titleCardColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0),
                ),
              ),
              child: Center(
                child: Text(
                  titleText,
                  style: kBiggerBlackTextStyle,
                ),
              ),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 25.0),
                      child: Text(
                        bodyText,
                        style: kBiggerBlackTextStyle,
                      ),
                    ),
                  ),
                  ClipRRect(
                    child: Image(
                      image: containerImage,
                    ),
                    borderRadius: BorderRadius.circular(40),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: bodyCardColor,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(40.0),
                  bottomRight: Radius.circular(40.0),
                ),
              ),
            ),
          ],
        ),
        padding: const EdgeInsets.all(8.0),
      ),
    );
  }
}
