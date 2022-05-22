import 'package:flutter/material.dart';
import 'package:project_two/core/constants.dart';
import 'package:project_two/widgets/button.dart';
import 'package:project_two/widgets/textField.dart';

import '../core/colors.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: 414,
        height: 896,
        child: Scaffold(
          backgroundColor: const Color.fromRGBO(249, 249, 249, 1),
          body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                alignment: Alignment.topLeft,
                image: AssetImage('images/rightlogo.png'),
                opacity: 50,
                scale: 1.2,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Image(
                    image: AssetImage('images/repairLogo.png'),
                    color: kBlueBlue,
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const Image(
                    image: AssetImage('images/Repair home.png'),
                    color: kBlueBlue,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Create new account',
                          style: TextStyle(
                            fontFamily: 'Source Sans Pro',
                            fontSize: 20.0,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const AppTextFormField(
                    hintText: 'Email',
                    obscureText: false,
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const AppTextFormField(
                    hintText: 'Password',
                    obscureText: true,
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const AppTextFormField(
                    hintText: 'Confirm password',
                    obscureText: true,
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  AppButton(
                    text: 'Sign up',
                    color: kBlueBlue,
                    style: kBiggerWhiteTextStyle,
                    onPressed: () {
                      Navigator.pushNamed(context, '/menu');
                    },
                  ),
                  const SizedBox(
                    height: 50.0,
                  ),
                  const Text(
                    '\u2022  Or sing in with -',
                    style: kBlackGreyTextStyle,
                  ),
                  Row(
                    children: const <Widget>[
                      WhiteButton(
                        image: AssetImage(
                          'images/google.png',
                        ),
                      ),
                      WhiteButton(
                        image: AssetImage(
                          'images/facebook.png',
                        ),
                      ),
                      WhiteButton(
                        image: AssetImage(
                          'images/twitter.png',
                        ),
                      ),
                    ],
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
