import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 18),
                    child: Text(
                      'Wallet',
                      style: TextStyle(
                          color: Colors.deepPurple,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 18),
                    child: ClipOval(
                      child: Image.asset(
                        'assets/me1.JPG',
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(right: 250),
                child: Text(
                  'Active',
                  style: TextStyle(
                      color: Colors.black12,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Stack(
                children: [
                  Container(
                      width: MediaQuery.of(context).size.width,
                      child: SvgPicture.asset('assets/home_card.svg')),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: SvgPicture.asset('assets/home_design.svg'),
                  ),
                  const Positioned(
                    top: 50,
                    left: 50,
                    child: Text(
                      'Balance',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Positioned(
                      top: 70,
                      left: 50,
                      child: SvgPicture.asset('assets/home_price.svg')),
                  const Positioned(
                    top: 50,
                    left: 200,
                    child: Text(
                      'Card',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Positioned(
                    top: 65,
                    left: 200,
                    child: Text(
                      'Mabank',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: SvgPicture.asset('assets/home_featured.svg')),
              const SizedBox(
                height: 20,
              ),
              Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: SvgPicture.asset('assets/last_trans.svg'),
                  ),
                  Positioned(
                      bottom: 0,
                      child: Container(
                          width: MediaQuery.of(context).size.width * 0.9,
                          child: SvgPicture.asset('assets/home_nav.svg')))
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
