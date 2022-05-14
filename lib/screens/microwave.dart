import 'package:flutter/material.dart';
import 'package:project_two/colors.dart';

class MicrowaveScreen extends StatefulWidget {
  const MicrowaveScreen({Key? key}) : super(key: key);

  @override
  State<MicrowaveScreen> createState() => _MicrowaveScreenState();
}

class _MicrowaveScreenState extends State<MicrowaveScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: dColorWhiteGrey,
      body: Column(
        children: [
          Container(
            height: 409,
            padding: const EdgeInsets.only(left: 20),
            decoration: const BoxDecoration(
              image: DecorationImage(
                alignment: Alignment.bottomRight,
                image: AssetImage('images/background5.png'),
                opacity: 1,
                scale: 1.1,
              ),
              color: dColorLightPink,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
                bottomLeft: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0),
              ),
            ),
            child: Column(
              children: const [
                SizedBox(
                  height: 20,
                ),
                ListTile(
                  leading: Icon(
                    Icons.arrow_back_ios,
                    color: dColorBlack,
                  ),
                  title: Center(
                    child: Text(
                      'Fix Microwave',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold,
                        color: dColorBlack,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Image(
                  image: AssetImage(
                    'images/microwave_image.png',
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40.0, right: 40.0),
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: SizedBox(
                    height: 50,
                    // padding: const EdgeInsets.all(16),
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        backgroundColor: dColorLightPink,
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Reviews',
                        style: TextStyle(
                          fontSize: 17,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold,
                          color: dColorGrey,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 40,
                ),
                Expanded(
                  flex: 1,
                  child: SizedBox(
                    height: 50,
                    // padding: const EdgeInsets.all(16),
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        backgroundColor: dColorBlack,
                      ),
                      onPressed: () {},
                      child: Image.asset('images/message_icon.png'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40.0, right: 40.0),
            child: ListTile(
              shape: RoundedRectangleBorder(
                side: const BorderSide(color: dColorWhiteGrey, width: 0.5),
                borderRadius: BorderRadius.circular(5),
              ),
              tileColor: dColorWhite,
              leading: const Text(
                'Repairs',
                style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.bold,
                  color: dColorBlack,
                ),
              ),
              trailing: const Text(
                '\$52',
                style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.bold,
                  color: dColorBlack,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40.0, right: 40.0),
            child: ListTile(
              shape: RoundedRectangleBorder(
                side: const BorderSide(color: dColorWhiteGrey, width: 0.5),
                borderRadius: BorderRadius.circular(5),
              ),
              tileColor: dColorWhite,
              leading: const Text(
                'Setup',
                style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.bold,
                  color: dColorBlack,
                ),
              ),
              trailing: const Text(
                '\$12',
                style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.bold,
                  color: dColorBlack,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}