import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddCard extends StatelessWidget {
  const AddCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: GestureDetector(
            child: SvgPicture.asset(
              'assets/arrow back.svg',
            ),
          ),
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Add Card',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.deepPurple),
                    ),
                    SizedBox(
                      height: 40,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Stack(
                children: [
                  // ignore: avoid_unnecessary_containers
                  Container(
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 10,
                          spreadRadius: 0,
                          offset: const Offset(
                            15,
                            12,
                          ))
                    ]),
                    child: SvgPicture.asset(
                      'assets/card body.svg',
                    ),
                  ),
                  SvgPicture.asset('assets/card design.svg'),
                  Positioned(
                      top: 70,
                      left: 30,
                      child: SvgPicture.asset('assets/card chip.svg')),
                  Positioned(
                      bottom: 40,
                      right: 30,
                      child: SvgPicture.asset('assets/card text.svg'))
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                '          Add a new card\n on your wallet for easy life',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
