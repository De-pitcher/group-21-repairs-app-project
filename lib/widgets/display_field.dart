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
      width: 435.0,
      decoration: const BoxDecoration(
          color: kPrimaryColor3,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Row(
        children: [
          const SizedBox(
            width: 10.0,
          ),
          Card(
            shape: RoundedRectangleBorder(
                side: BorderSide.none, borderRadius: BorderRadius.circular(5)),
            color: const Color(0xFFC7D9FF),
            child: Image(
              image: image,
              height: 40,
              width: 40,
            ),
          ),
          const SizedBox(
            width: 30.0,
          ),
          SizedBox(
            width: 310.0,
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
            children: [
              const Icon(
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
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Row(
        children: [
          const SizedBox(
            width: 10.0,
          ),
          Card(
            shape: RoundedRectangleBorder(
                side: BorderSide.none, borderRadius: BorderRadius.circular(5)),
            color: const Color(0xFFC7D9FF),
            child: child,
          ),
          const SizedBox(
            width: 30.0,
          ),
          SizedBox(
            width: 310.0,
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

class CartDisplayField extends StatelessWidget {
  const CartDisplayField(
      {Key? key,
      required this.image,
      required this.titleText,
      required this.desText,
      required this.priceText})
      : super(key: key);
  final AssetImage image;
  final String titleText;
  final String desText;
  final String priceText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 63.0,
      width: 435.0,
      decoration: const BoxDecoration(
          color: Color(0xFFF1F4FD),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Row(
        children: [
          const SizedBox(
            width: 10.0,
          ),
          Card(
            shape: RoundedRectangleBorder(
                side: BorderSide.none, borderRadius: BorderRadius.circular(5)),
            color: const Color(0xFFC7D9FF),
            child: Image(
              image: image,
              height: 40,
              width: 40,
            ),
          ),
          const SizedBox(
            width: 30.0,
          ),
          SizedBox(
            width: 260.0,
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
            children: [
              Text(
                priceText,
                style: kBlackSmallerTextStyle,
              ),
              const SizedBox(
                width: 30.0,
              ),
              const Icon(
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
