import 'package:flutter/material.dart';
import 'package:project_two/core/colors.dart';
import 'package:project_two/core/constants.dart';
import 'package:project_two/widgets/display_field.dart';

class MicrowaveScreen extends StatefulWidget {
  const MicrowaveScreen({Key? key}) : super(key: key);

  @override
  State<MicrowaveScreen> createState() => _MicrowaveScreenState();
}

class _MicrowaveScreenState extends State<MicrowaveScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteLight,
      body: Column(
        children: [
          Container(
            height: 400,
            padding: const EdgeInsets.only(left: 20),
            decoration: const BoxDecoration(
              image: DecorationImage(
                alignment: Alignment.bottomRight,
                image: AssetImage('images/background5.png'),
                opacity: 1,
                scale: 1.1,
              ),
              color: kLightRed,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10.0),
                bottomRight: Radius.circular(10.0),
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
                    color: kBBlack,
                  ),
                  title: Center(
                    child: Text(
                      'Fix Microwave',
                      style: kBiggerBlackTextStyle,
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
                        backgroundColor: kLightRed,
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Reviews',
                        style: TextStyle(
                          fontSize: 17,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold,
                          color: Colors.brown,
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
                        backgroundColor: kBBlack,
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
          const CardDisplayField(titleText: 'Repairs', trailingText: '\$52'),
          const SizedBox(
            height: 40,
          ),
          const CardDisplayField(titleText: 'Setup', trailingText: '\$12'),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40.0, right: 40.0),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: SizedBox(
                    height: 50,
                    // padding: const EdgeInsets.all(16),
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        backgroundColor: kBBlack,
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Order repair',
                        style: kWhiteSmallTextStyle,
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
                        backgroundColor: const Color(0xFFFFFFFF),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Order setup',
                        style: TextStyle(
                          fontSize: 13,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold,
                          color: kBBlack,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
