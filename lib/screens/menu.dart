import 'package:flutter/material.dart';
import 'package:project_two/core/colors.dart';
import 'package:project_two/core/constants.dart';
import 'package:project_two/widgets/container.dart';
import 'package:project_two/widgets/display_field.dart';

import '../widgets/menu_display_field.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: 414,
        height: 896,
        child: Scaffold(
          backgroundColor: kWhiteLight,
          body: SafeArea(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  alignment: Alignment.bottomLeft,
                  image: AssetImage('images/background4.png'),
                  // opacity: 50,
                ),
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Image(
                          image: AssetImage('images/menu.png'),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/microwave');
                          },
                          child: const Image(
                            image: AssetImage('images/shopping_cart.png'),
                            width: 35,
                            height: 35,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: const [
                        Text(
                          'What\'s broken?',
                          style: TextStyle(
                            fontSize: 23.0,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.bold,
                            color: kBBlack,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      color: kLightAsh,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(color: kLightAsh, width: 0.5),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const ListTile(
                        tileColor: Color(0xFFFFFEFE),
                        leading: Text(
                          'Search appliances',
                          style: TextStyle(
                            fontSize: 17.0,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                        trailing: Image(
                          image: AssetImage(
                            'images/search.png',
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: const [
                        Text(
                          'Offers',
                          style: kBiggerBlackTextStyle,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: const [
                      Expanded(
                        child: CardContainer(
                          titleText: 'Valid till june 30th',
                          bodyText: 'Get a 5% discount for each',
                          containerImage: AssetImage('images/image1.png'),
                          titleCardColor: kPrimaryColor3,
                          bodyCardColor: kLightWhite,
                        ),
                      ),
                      Expanded(
                        child: CardContainer(
                          titleText: 'Valid until july 30th',
                          bodyText: 'Get a 5% discount for each',
                          containerImage: AssetImage('images/image1.png'),
                          bodyCardColor: kPrimaryColor2,
                          titleCardColor: kLightWhite,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Row(
                      children: const [
                        Text(
                          'We can fix it',
                          style: kBiggerBlackTextStyle,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                    child: SizedBox(
                      height: 30,
                      child: Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              child: const Center(
                                child: Text(
                                  'Offers',
                                  style: TextStyle(
                                    fontFamily: 'Gotham',
                                    fontSize: 16.0,
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.bold,
                                    color: kWhiteLight,
                                  ),
                                ),
                              ),
                              decoration: const BoxDecoration(
                                color: kBBlack,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20.0),
                                ),
                              ),
                              padding: const EdgeInsets.all(0.0),
                              height: 30,
                              width: 90,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              'Kitchen',
                              style: kGreyTextStyle,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              'Livingroom',
                              style: kGreyTextStyle,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              'Bathroom',
                              style: kGreyTextStyle,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 16.0, right: 16.0),
                    child: MenuDisplayField(
                      image: AssetImage('images/microwave_icon.png'),
                      titleText: 'Fix Microwave',
                      desText: 'Kitchen',
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 16.0, right: 16.0),
                    child: MenuDisplayField(
                      image: AssetImage('images/television_icon.png'),
                      titleText: 'Fix TV set',
                      desText: 'Living room',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
