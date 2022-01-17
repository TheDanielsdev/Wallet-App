import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
                    bottom: -10,
                    child: SvgPicture.asset(
                      'assets/btmnav.svg',
                      width: MediaQuery.of(context).size.width,
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
