import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_two/colors.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
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
      backgroundColor: whiteLight,
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            const ListTile(
              leading: Icon(
                Icons.arrow_back_ios,
                color: dColorBlack,
              ),
              title: Center(
                child: Text(
                  'Cart',
                  style: TextStyle(
                    fontSize: 19.0,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold,
                    color: dColorBlack,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(35.0),
              child: ExpansionTile(
                tilePadding: EdgeInsets.zero,
                initiallyExpanded: true,
                collapsedBackgroundColor:
                    const Color.fromRGBO(241, 244, 253, 1),
                iconColor: bBlack,
                title: ListTile(
                  tileColor: const Color.fromRGBO(241, 244, 253, 1),
                  leading: const Card(
                    color: Color.fromRGBO(199, 217, 255, 1),
                    child: Image(
                      image: AssetImage('images/television_icon.png'),
                      height: 40,
                      width: 40,
                    ),
                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Fix Microwave',
                        style: TextStyle(
                          fontSize: 13.0,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold,
                          color: dColorBlack,
                        ),
                      ),
                      Text(
                        'Kitchen',
                        style: TextStyle(
                          fontSize: 12.0,
                          fontStyle: FontStyle.normal,
                          color: dColorGrey,
                        ),
                      ),
                    ],
                  ),
                ),
                children: [
                  ListTile(
                    tileColor: primaryColor3,
                    leading: Stack(
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
                    title: const Text(
                      'Set up Microwave',
                      style: TextStyle(
                        fontSize: 17.0,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold,
                        color: dColorBlack,
                      ),
                    ),
                  ),
                  ListTile(
                    tileColor: primaryColor3,
                    leading: Stack(
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
                    title: const Text(
                      'Set up Microwave',
                      style: TextStyle(
                        fontSize: 17.0,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold,
                        color: dColorBlack,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const DisplayFieldWithPrice(
              image: AssetImage('images/fridge.png'),
              titleText: 'Fix Fridge',
              desText: '2 Service',
              priceText: '\$70',
            ),
            const SizedBox(
              height: 15,
            ),
            const DisplayFieldWithPrice(
              image: AssetImage('images/computer.png'),
              titleText: 'Fix Washer',
              desText: '1 Service',
              priceText: '\$135',
            ),
            const SizedBox(
              height: 15,
            ),
            const DisplayFieldWithPrice(
              image: AssetImage('images/washer.png'),
              titleText: 'Fix Computer',
              desText: '2 Service',
              priceText: '\$30',
            ),
            const SizedBox(
              height: 170,
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
                    color: bBlack,
                  ),
                ),
                SizedBox(
                  width: 300,
                ),
                Text(
                  '\$302',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold,
                    color: bBlack,
                  ),
                ),
              ],
            ),
            Container(
              height: 63,
              width: double.infinity,
              padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'Make an order',
                  style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    fontSize: 16.0,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: bBlack,
                ),
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

//
// shape: RoundedRectangleBorder(
// side: const BorderSide(
// color: dColorGrey,
// width: 0.5,
// ),
// borderRadius: BorderRadius.circular(5)),
