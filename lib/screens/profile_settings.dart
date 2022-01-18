// ignore_for_file: unnecessary_const

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileSettings extends StatelessWidget {
  ProfileSettings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: SvgPicture.asset('assets/arrow back.svg')),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 30,
              ),
              Stack(
                children: [
                  Center(
                    child: ClipOval(
                      child: Image.asset(
                        'assets/me1.JPG',
                        width: 150,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 90,
                    child: Container(
                      width: 140,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.deepPurple.withOpacity(0.5),
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(50),
                              bottomRight: Radius.circular(50)),
                          border: Border.all(color: Colors.transparent)),
                    ),
                  ),
                  const Positioned(
                    bottom: 20,
                    left: 130,
                    child: Text(
                      'Change',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Padding(
                    padding: const EdgeInsets.only(left: 120),
                    child: const Text(
                      'Jaka',
                      style: TextStyle(
                          color: Colors.deepPurple,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 120),
                    child: SvgPicture.asset('assets/edit.svg'),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Column(
                children: const [
                  const SizedBox(
                    height: 30,
                  ),
                  const ListTile(
                    leading: Text(
                      'Connected Account',
                      style: TextStyle(
                          color: Colors.deepPurple,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.deepPurple,
                      size: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const ListTile(
                    leading: Text(
                      'Privacy and security',
                      style: TextStyle(
                          color: Colors.deepPurple,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.deepPurple,
                      size: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const ListTile(
                    leading: Text(
                      'Login settings',
                      style: TextStyle(
                          color: Colors.deepPurple,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.deepPurple,
                      size: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const ListTile(
                    leading: Text(
                      'Service center',
                      style: TextStyle(
                          color: Colors.deepPurple,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.deepPurple,
                      size: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  const Icon(
                    Icons.delete_forever_outlined,
                    color: Colors.deepPurple,
                    size: 50,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Delete Account',
                    style: TextStyle(
                        color: Colors.deepPurple,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
