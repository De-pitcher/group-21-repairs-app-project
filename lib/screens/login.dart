import 'package:flutter/material.dart';
import 'package:project_two/core/colors.dart';
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
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(249, 249, 249, 1),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              alignment: Alignment.topRight,
              image: AssetImage('images/leftlogo.png'),
              opacity: 50,
              scale: 1.1,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Image(
                  image: AssetImage('images/repairLogo.png'),
                ),
                const Image(
                  image: AssetImage('images/Repair home.png'),
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Login to your account',
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
                const AppTextFormField(labelText: 'Email', obscureText: false),
                const AppTextFormField(
                    labelText: 'Password', obscureText: true),
                const SizedBox(
                  height: 10.0,
                ),
                const AppButton(
                  text: 'Sign in',
                  color: blueBlue,
                ),
                const SizedBox(
                  height: 50.0,
                ),
                const Text(
                  '*  Or sing in with -',
                  style: TextStyle(
                    fontSize: 17.0,
                    fontStyle: FontStyle.normal,
                    color: dColorGrey,
                  ),
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: OutlinedButton(
                          onPressed: () {},
                          child: const Image(
                            image: AssetImage(
                              'images/google.png',
                            ),
                            height: 50,
                            width: 50,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: OutlinedButton(
                          onPressed: () {},
                          child: const Image(
                            image: AssetImage(
                              'images/facebook.png',
                            ),
                            height: 50,
                            width: 50,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: OutlinedButton(
                          onPressed: () {},
                          child: const Image(
                            image: AssetImage(
                              'images/twitter.png',
                            ),
                            height: 50,
                            width: 50,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      '*   Don\'t have an account?',
                      style: TextStyle(
                        fontSize: 17.0,
                        fontStyle: FontStyle.normal,
                        color: dColorGrey,
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'Sign up',
                      style: TextStyle(
                        fontSize: 17.0,
                        fontStyle: FontStyle.normal,
                        color: dColorBlue,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
