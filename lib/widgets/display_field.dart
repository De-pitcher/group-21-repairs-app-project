import 'package:flutter/material.dart';
import 'package:project_two/core/colors.dart';

class DisplayFieldWithPrice extends StatelessWidget {
  final AssetImage image;
  final String titleText;
  final String desText;
  final String? priceText;
  const DisplayFieldWithPrice(
      {Key? key,
      required this.image,
      required this.titleText,
      required this.desText,
      this.priceText})
      : super(key: key);
  const DisplayFieldWithPrice.priceText(
      {Key? key,
      required this.image,
      required this.titleText,
      required this.desText,
      this.priceText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0, right: 30.0),
      child: Card(
        color: const Color.fromRGBO(241, 244, 253, 1),
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
          title: Row(
            children: [
              SizedBox(
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
                        color: bBlack,
                      ),
                    ),
                    Text(
                      desText,
                      style: const TextStyle(
                        fontSize: 12.0,
                        fontStyle: FontStyle.normal,
                        color: bBlack,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                priceText!,
                style: const TextStyle(
                  fontSize: 12.0,
                  fontStyle: FontStyle.normal,
                  color: bBlack,
                ),
              ),
            ],
          ),
          trailing: const Icon(
            Icons.arrow_forward_ios,
            color: dColorBlack,
            size: 15,
          ),
        ),
      ),
    );
  }
}

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
        color: primaryColor3,
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
                    color: bBlack,
                  ),
                ),
                Text(
                  desText,
                  style: const TextStyle(
                    fontSize: 12.0,
                    fontStyle: FontStyle.normal,
                    color: bBlack,
                  ),
                ),
              ],
            ),
          ),
          trailing: const Icon(
            Icons.arrow_forward_ios,
            color: bBlack,
            size: 15,
          ),
        ),
      ),
    );
  }
}
