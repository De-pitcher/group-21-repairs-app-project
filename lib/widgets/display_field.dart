import 'package:flutter/material.dart';
import 'package:project_two/core/colors.dart';
import 'package:project_two/core/constants.dart';

class DisplayField extends StatelessWidget {
  final AssetImage image;
  final String titleText;
  final String desText;
  const DisplayField(
      {Key? key,
      required this.image,
      required this.titleText,
      required this.desText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0, right: 30.0),
      child: Card(
        color: kPrimaryColor3,
        child: ListTile(
          shape: RoundedRectangleBorder(
            side: const BorderSide(
              color: Color.fromRGBO(234, 234, 234, 1),
              width: 0.5,
            ),
            borderRadius: BorderRadius.circular(5),
          ),
          leading: Card(
            color: const Color.fromRGBO(199, 217, 255, 1),
            child: Image(
              image: image,
              height: 40,
              width: 40,
            ),
          ),
          title: SizedBox(
            width: 280,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  titleText,
                  style: const TextStyle(
                    fontSize: 13.0,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold,
                    color: kBBlack,
                  ),
                ),
                Text(
                  desText,
                  style: const TextStyle(
                    fontSize: 12.0,
                    fontStyle: FontStyle.normal,
                    color: kBBlack,
                  ),
                ),
              ],
            ),
          ),
          trailing: const Icon(
            Icons.arrow_forward_ios,
            color: kBBlack,
            size: 15,
          ),
        ),
      ),
    );
  }
}

class CardDisplayField extends StatelessWidget {
  const CardDisplayField(
      {Key? key, required this.titleText, required this.trailingText})
      : super(key: key);
  final String titleText;
  final String trailingText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 40.0,
        right: 40.0,
      ),
      child: ListTile(
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            color: Color(0xFFE8E8E8),
            width: 0.5,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        tileColor: const Color(0xFFFFFFFF),
        leading: Text(
          titleText,
          style: kBlackSmallTextStyle,
        ),
        trailing: Text(
          trailingText,
          style: kBlackSmallTextStyle,
        ),
      ),
    );
  }
}
