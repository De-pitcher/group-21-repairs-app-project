import 'package:flutter/material.dart';
import 'package:project_two/core/colors.dart';
import 'package:project_two/core/constants.dart';
import 'package:project_two/widgets/button.dart';
import 'package:project_two/widgets/textField.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SingleChildScrollView(
        child: SizedBox(
          width: 414,
          height: 896,
          child: Scaffold(
            backgroundColor: const Color.fromRGBO(249, 249, 249, 1),
            body: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  alignment: Alignment.topRight,
                  image: AssetImage('images/leftlogo.png'),
                  opacity: 50,
                  scale: 1.3,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Image(
                      image: AssetImage('images/repairLogo.png'),
                      width: 121.65,
                      height: 83.47,
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const Image(
                      image: AssetImage('images/Repair home.png'),
                      width: 223,
                      height: 34,
                    ),
                    const SizedBox(
                      height: 40.0,
                    ),
                    Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Login to your account',
                            style: kBiggerBlackTextStyle,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    const AppTextFormField(
                      hintText: 'Email',
                      obscureText: false,
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    const AppTextFormField(
                        hintText: 'Password', obscureText: true),
                    const SizedBox(
                      height: 15.0,
                    ),
                    AppButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/menu');
                      },
                      text: 'Sign in',
                      color: kBlueBlue,
                      style: kBiggerWhiteTextStyle,
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const Text(
                      '\u2022  Or sing in with -',
                      style: kBlackGreyTextStyle,
                    ),
                    const SizedBox(
                      height: 30.0,
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
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text(
                          '\u2022  Don\'t have an account?',
                          style: kBlackGreyTextStyle,
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/sign_up');
                          },
                          child: const Text(
                            'Sign up',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w500,
                              color: Colors.blue,
                            ),
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
      ),
    );
  }
}
