import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_two/core/colors.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:project_two/core/constants.dart';
import 'package:project_two/widgets/button.dart';
import 'package:project_two/widgets/display_field.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteLight,
      body: Container(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const ListTile(
              leading: Icon(
                Icons.arrow_back_ios,
                color: kBBlack,
              ),
              title: Center(
                child: Text(
                  'Cart',
                  style: TextStyle(
                    fontSize: 19.0,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold,
                    color: kBBlack,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              color: kWhiteLight,
              width: 435,
              child: Column(
                children: [
                  SizedBox(
                    height: 63,
                    child: Material(
                      elevation: 8.0,
                      child: Container(
                        height: 63.0,
                        width: 435.0,
                        decoration: const BoxDecoration(
                            color: Color(0xFFF1F4FD),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 10.0,
                            ),
                            Card(
                              shape: RoundedRectangleBorder(
                                  side: BorderSide.none,
                                  borderRadius: BorderRadius.circular(5)),
                              color: const Color(0xFFC7D9FF),
                              child: const Image(
                                image: AssetImage('images/microwave_icon.png'),
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
                                children: const [
                                  Text(
                                    'Fix Microwave',
                                    style: kBlackSmallTextStyle,
                                  ),
                                  Text(
                                    'Kitchen',
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
                      ),
                    ),
                  ),
                  Container(
                    height: 69,
                    color: kPrimaryColor3,
                    child: CartFoldingField(
                      titleText: 'Set up Microwave',
                      priceText: '\$22',
                      child: Stack(
                        alignment: AlignmentDirectional.center,
                        children: const [
                          Image(
                            color: Colors.red,
                            image: AssetImage(
                              'images/Ellipse 3.png',
                            ),
                            width: 19,
                            height: 19,
                          ),
                          Image(
                            image: AssetImage(
                              'images/content_line.png',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Container(
                    height: 63,
                    color: kPrimaryColor3,
                    child: CartFoldingField(
                      titleText: 'Repair Microwave',
                      priceText: '\$80',
                      child: Stack(
                        alignment: AlignmentDirectional.center,
                        children: const [
                          Image(
                            color: Colors.red,
                            image: AssetImage(
                              'images/Ellipse 3.png',
                            ),
                            width: 19,
                            height: 19,
                          ),
                          Image(
                            image: AssetImage(
                              'images/content_line.png',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const CartDisplayField(
              image: AssetImage('images/fridge.png'),
              titleText: 'Fix Fridge',
              desText: '2 Service',
              priceText: '\$70',
            ),
            const SizedBox(
              height: 15,
            ),
            const CartDisplayField(
              image: AssetImage('images/computer.png'),
              titleText: 'Fix Washer',
              desText: '1 Service',
              priceText: '\$135',
            ),
            const SizedBox(
              height: 15,
            ),
            const CartDisplayField(
              image: AssetImage('images/washer.png'),
              titleText: 'Fix Computer',
              desText: '2 Service',
              priceText: '\$30',
            ),
            const SizedBox(
              height: 150.0,
            ),
            Row(
              children: const [
                SizedBox(
                  width: 50,
                ),
                Text(
                  'Total price',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontStyle: FontStyle.normal,
                    color: kBBlack,
                  ),
                ),
                SizedBox(
                  width: 280,
                ),
                Text(
                  '\$302',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold,
                    color: kBBlack,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: AppButton(
                text: 'Make an order',
                color: kBBlack,
                style: kBiggerWhiteTextStyle,
              ),
            ),
          ],
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            alignment: Alignment.topRight,
            image: AssetImage('images/background6.png'),
            opacity: 1,
            scale: 1.1,
          ),
        ),
      ),
    );
  }
}
