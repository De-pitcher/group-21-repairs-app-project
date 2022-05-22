import 'package:flutter/material.dart';

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
    return Container(
      height: 230,
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: titleCardColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16.0),
                  topRight: Radius.circular(16.0),
                ),
              ),
              child: Center(
                child: Text(
                  titleText,
                  textAlign: TextAlign.center,
                  style: kBiggerBlackTextStyle,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              child: Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          bodyText,
                          textAlign: TextAlign.center,
                          style: kBiggerBlackTextStyle,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ClipRRect(
                            child: Image(
                              image: containerImage,
                            ),
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(8.0),
                              bottomRight: Radius.circular(8.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              decoration: BoxDecoration(
                color: bodyCardColor,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(8.0),
                  bottomRight: Radius.circular(8.0),
                ),
              ),
            ),
          ),
        ],
      ),
      padding: const EdgeInsets.all(4.0),
    );
  }
}
