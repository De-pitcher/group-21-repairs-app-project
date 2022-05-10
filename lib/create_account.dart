import 'package:flutter/material.dart';

import 'colors.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: dColorWhite,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            alignment: Alignment.topLeft,
            image: AssetImage('images/rightlogo.png'),
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                  obscureText: true,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Confirm password',
                    border: OutlineInputBorder(),
                  ),
                  obscureText: true,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                width: double.infinity,
                padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    'Sign up',
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
            ],
          ),
        ),
      ),
    );
  }
}
