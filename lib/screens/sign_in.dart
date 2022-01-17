// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wallet_app/screens/login.dart';

class SignInPAge extends StatelessWidget {
  const SignInPAge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SignIn(),
    );
  }
}

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.01,
                    left: MediaQuery.of(context).size.width * 0.05,
                    right: MediaQuery.of(context).size.width * 0.05,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: Text(
                          "   Welcome back \n to Mabank Wallet",
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.deepPurple,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                          margin: EdgeInsets.only(),
                          child: Center(
                              child: Text(
                            'Sign up with',
                            style: TextStyle(
                                color: Colors.black12,
                                fontWeight: FontWeight.bold),
                          ))),
                      Container(
                          margin: EdgeInsets.only(),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SvgPicture.asset(
                                'assets/google.svg',
                                width: 140,
                              ),
                              SvgPicture.asset(
                                'assets/facebook.svg',
                                width: 140,
                              )
                            ],
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                          margin: EdgeInsets.only(right: 0),
                          child: InkWell(
                            highlightColor: Colors.grey,
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                  10,
                                )),
                                hintText: 'enter your username',
                                labelText: 'Username',
                              ),
                            ),
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                          margin: EdgeInsets.only(right: 0),
                          child: InkWell(
                            highlightColor: Colors.grey,
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                  10,
                                )),
                                hintText: 'enter email',
                                labelText: 'Email',
                              ),
                            ),
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                          margin: EdgeInsets.only(right: 0),
                          child: TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              hintText: 'enter your password',
                              labelText: 'Password',
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Invalid Field';
                              }
                              return null;
                            },
                          )),
                      Container(
                        margin: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.02,
                            right: MediaQuery.of(context).size.width * 0.02,
                            top: 20),
                      ),
                      Container(
                          margin: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * 0.02,
                              right: MediaQuery.of(context).size.width * 0.02,
                              top: 15),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: MaterialButton(
                                onPressed: () {},
                                color: Colors.deepPurple,
                                height: 60,
                                minWidth:
                                    MediaQuery.of(context).size.width * 0.5,
                                elevation: 2,
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: const [
                                    Center(
                                      child: Text(
                                        "Register",
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                )),
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => Login()));
                        },
                        child: Text.rich(TextSpan(children: const <TextSpan>[
                          TextSpan(
                              text: 'you have an account?',
                              style: TextStyle(
                                color: Colors.black12,
                                fontWeight: FontWeight.bold,
                              )),
                          TextSpan(
                              text: ' Login',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                              ))
                        ])),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
