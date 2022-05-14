import 'package:flutter/material.dart';
import 'package:project_two/colors.dart';
import 'package:project_two/widgets/display_field.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteLight,
      appBar: AppBar(
        backgroundColor: dColorWhiteGrey,
        leading: const Image(
          image: AssetImage('images/menu.png'),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            Image(
              image: AssetImage('images/shopping_cart.png'),
              width: 35,
              height: 35,
            ),
          ],
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            alignment: Alignment.bottomLeft,
            image: AssetImage('images/background4.png'),
            // opacity: 50,
          ),
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: const [
                  Text(
                    'What\'s broken?',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold,
                      color: dColorBlack,
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Card(
                color: dColorWhite,
                child: ListTile(
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
                    style: TextStyle(
                      fontSize: 20.0,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold,
                      color: dColorBlack,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 60,
                          decoration: const BoxDecoration(
                            color: dColorSkyBlue,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40.0),
                              topRight: Radius.circular(40.0),
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              'Valid till june 30th',
                              style: TextStyle(
                                fontSize: 17.0,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                color: dColorBlack,
                                letterSpacing: 1,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: Row(
                            children: <Widget>[
                              const Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(left: 25.0),
                                  child: Text(
                                    'Get a 5% discount for each',
                                    style: TextStyle(
                                      fontSize: 17.0,
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.bold,
                                      color: dColorBlack,
                                    ),
                                  ),
                                ),
                              ),
                              ClipRRect(
                                child: const Image(
                                  image: AssetImage(
                                    'images/image1.png',
                                  ),
                                ),
                                borderRadius: BorderRadius.circular(40),
                              ),
                            ],
                          ),
                          decoration: const BoxDecoration(
                            color: lightWhite,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(40.0),
                              bottomRight: Radius.circular(40.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                    padding: const EdgeInsets.all(8.0),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 60,
                          decoration: const BoxDecoration(
                            color: dColorLightLightBlue,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40.0),
                              topRight: Radius.circular(40.0),
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              'Valid until july 30th',
                              style: TextStyle(
                                fontSize: 17.0,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                color: dColorBlack,
                                letterSpacing: 1,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: Row(
                            children: <Widget>[
                              const Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(left: 25),
                                  child: Text(
                                    'Get a 5% discount for each',
                                    style: TextStyle(
                                      fontSize: 17.0,
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.bold,
                                      color: dColorBlack,
                                    ),
                                  ),
                                ),
                              ),
                              ClipRRect(
                                child: const Image(
                                  image: AssetImage(
                                    'images/image1.png',
                                  ),
                                ),
                                borderRadius: BorderRadius.circular(40),
                              ),
                            ],
                          ),
                          decoration: const BoxDecoration(
                            color: primaryColor2,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(40.0),
                              bottomRight: Radius.circular(40.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                    padding: const EdgeInsets.all(8.0),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 45,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: const [
                  Text(
                    'We can fix it',
                    style: TextStyle(
                      fontSize: 17.0,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold,
                      color: dColorBlack,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  OutlinedButton(
                    onPressed: () {},
                    child: const Text(
                      'Offers',
                      style: TextStyle(
                        fontSize: 17.0,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold,
                        color: dColorWhite,
                      ),
                    ),
                    style: OutlinedButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: dColorBlack,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Text(
                    'Kitchen',
                    style: TextStyle(
                      fontSize: 17.0,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold,
                      color: dColorGrey,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Text(
                    'Livingroom',
                    style: TextStyle(
                      fontSize: 17.0,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold,
                      color: dColorGrey,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Text(
                    'Bathroom',
                    style: TextStyle(
                      fontSize: 17.0,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold,
                      color: dColorGrey,
                    ),
                  ),
                ],
              ),
            ),
            const DisplayField(
              image: AssetImage('images/microwave_icon.png'),
              titleText: 'Fix Microwave',
              desText: 'Kitchen',
            ),
            const SizedBox(
              height: 20,
            ),
            const DisplayField(
              image: AssetImage('images/television_icon.png'),
              titleText: 'Fix TV set',
              desText: 'Living room',
            ),
          ],
        ),
      ),
    );
  }
}
//   Category _currentCategory =
//
//   Widget _buildFixCategory(Category category, BuildContext context) {
//
//   }
// }
// enum Category {
//
// }
// leading: Column(
//   children: const <Widget>[
//     Image(
//       image: AssetImage('images/menu_icon/Line 1.png'),
//     ),
//     Image(
//       image: AssetImage('images/menu_icon/Line 2.png'),
//     ),
//     Image(
//       image: AssetImage('images/menu_icon/Line 3.png'),
//     )
//   ],
// ),