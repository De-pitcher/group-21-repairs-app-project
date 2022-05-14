import 'package:flutter/material.dart';
import 'package:project_two/colors.dart';

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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(),
                    ),
                    obscureText: false,
                  ),
                ),
                // const SizedBox(
                //   height: 10,
                // ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(),
                    ),
                    obscureText: true,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                  padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      'Sign in',
                      style: TextStyle(
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20.0,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: dColorDarkBlue,
                    ),
                  ),
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

//
//
// Container(
// decoration: const BoxDecoration(
// image: DecorationImage(
// image: AssetImage('images/logo.png'),
// fit: BoxFit.cover,
// ),
// ),
// ),
