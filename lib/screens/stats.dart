import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wallet_app/screens/home.dart';
import 'package:wallet_app/screens/notifications.dart';
import 'package:wallet_app/screens/settings.dart';

class Stats extends StatelessWidget {
  const Stats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: SafeArea(
            top: true,
            child: Stack(
              children: [
                SvgPicture.asset(
                  'assets/mainstats.svg',
                ),
                Positioned(
                  left: 10,
                  child: SvgPicture.asset(
                    'assets/chats.svg',
                    width: MediaQuery.of(context).size.width * 0.9,
                  ),
                ),
                Positioned(
                    top: 265,
                    left: 100,
                    child: SvgPicture.asset('assets/totalbal.svg')),
                Positioned(
                    top: 290,
                    left: 80,
                    child: SvgPicture.asset('assets/13k.svg')),
                Positioned(
                  top: 60,
                  left: 125,
                  child: SvgPicture.asset(
                    'assets/2100.svg',
                  ),
                ),
                Positioned(
                    bottom: 10,
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: MediaQuery.of(context).size.height * 0.1,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.deepPurple,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => Home()));
                                },
                                icon: const Icon(
                                  Icons.account_balance_wallet_outlined,
                                  color: Colors.white,
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.graphic_eq,
                                  color: Colors.white,
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => Notifications()));
                                },
                                icon: const Icon(
                                  Icons.notifications,
                                  color: Colors.white,
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => Settings()));
                                },
                                icon: const Icon(
                                  Icons.settings,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
