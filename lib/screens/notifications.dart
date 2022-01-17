import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: SvgPicture.asset('assets/arrow back.svg'),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Center(
                child: Text(
                  'Notification',
                  style: TextStyle(
                      color: Colors.deepPurple,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              const Center(
                child: Text(
                  'New',
                  style: TextStyle(
                      color: Colors.deepPurple,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                  child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              blurRadius: 10,
                              spreadRadius: 0,
                              offset: const Offset(
                                15,
                                12,
                              ))
                        ]),
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.height * 0.15,
                    child: Stack(
                      children: [
                        const Positioned(
                            left: 15,
                            top: 10,
                            child: Text(
                              '29 June 2021, 7:14am',
                              style: TextStyle(
                                  color: Colors.black12,
                                  fontWeight: FontWeight.bold),
                            )),
                        const Positioned(
                            left: 15,
                            top: 30,
                            child: Text(
                              'You received Rp 100.000 from',
                              style: TextStyle(
                                  color: Colors.deepPurple,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            )),
                        const Positioned(
                            left: 15,
                            top: 45,
                            child: Text(
                              'Alexandr Gibson Jogja',
                              style: TextStyle(
                                  color: Colors.deepPurple,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            )),
                        const Positioned(
                            left: 15,
                            top: 60,
                            child: Text(
                              "'Pay debt'",
                              style: TextStyle(
                                  color: Colors.black12,
                                  fontWeight: FontWeight.bold),
                            )),
                        Positioned(
                          right: 10,
                          child: ClipOval(
                            child: Container(
                              width: 10,
                              height: 10,
                              color: Colors.red,
                            ),
                          ),
                        ),
                        Positioned(
                          right: 20,
                          top: 20,
                          child: ClipOval(
                              // ignore: avoid_unnecessary_containers
                              child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.green,
                              ),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(
                                50,
                              ),
                            ),
                            child: const Icon(
                              Icons.arrow_drop_up_outlined,
                              color: Colors.green,
                              size: 40,
                            ),
                          )),
                        )
                      ],
                    ),
                  ),
                ],
              )),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 10,
                          spreadRadius: 0,
                          offset: const Offset(
                            15,
                            12,
                          ))
                    ]),
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.15,
                child: Stack(
                  children: [
                    const Positioned(
                        left: 15,
                        top: 10,
                        child: Text(
                          '29 June 2021, 9:02am',
                          style: TextStyle(
                              color: Colors.black12,
                              fontWeight: FontWeight.bold),
                        )),
                    const Positioned(
                        left: 15,
                        top: 30,
                        child: Text(
                          'You spent Rp 32.000 for coffee',
                          style: TextStyle(
                              color: Colors.deepPurple,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        )),
                    const Positioned(
                        left: 15,
                        top: 45,
                        child: Text(
                          'Cetar back Tugu Sentral',
                          style: TextStyle(
                              color: Colors.deepPurple,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        )),
                    const Positioned(
                        left: 15,
                        top: 60,
                        child: Text(
                          "'Buy drink'",
                          style: TextStyle(
                              color: Colors.black12,
                              fontWeight: FontWeight.bold),
                        )),
                    Positioned(
                      right: 10,
                      child: ClipOval(
                        child: Container(
                          width: 10,
                          height: 10,
                          color: Colors.red,
                        ),
                      ),
                    ),
                    Positioned(
                      right: 20,
                      top: 20,
                      child: ClipOval(
                          // ignore: avoid_unnecessary_containers
                          child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.red,
                          ),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(
                            50,
                          ),
                        ),
                        child: const Icon(
                          Icons.arrow_drop_down_outlined,
                          color: Colors.red,
                          size: 40,
                        ),
                      )),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Recent',
                style: TextStyle(
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 10,
                          spreadRadius: 0,
                          offset: const Offset(
                            15,
                            12,
                          ))
                    ]),
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.15,
                child: Stack(
                  children: [
                    const Positioned(
                        left: 15,
                        top: 10,
                        child: Text(
                          '28 June 2021, 9:02pm',
                          style: TextStyle(
                              color: Colors.black12,
                              fontWeight: FontWeight.bold),
                        )),
                    const Positioned(
                        left: 15,
                        top: 30,
                        child: Text(
                          'You spent Rp 210.000 for pay',
                          style: TextStyle(
                              color: Colors.deepPurple,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        )),
                    const Positioned(
                        left: 15,
                        top: 45,
                        child: Text(
                          'Tokosbla ijo mera',
                          style: TextStyle(
                              color: Colors.deepPurple,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        )),
                    const Positioned(
                        left: 15,
                        top: 60,
                        child: Text(
                          "'Buy items'",
                          style: TextStyle(
                              color: Colors.black12,
                              fontWeight: FontWeight.bold),
                        )),
                    Positioned(
                      right: 10,
                      child: ClipOval(
                        child: Container(
                          width: 10,
                          height: 10,
                          color: Colors.red,
                        ),
                      ),
                    ),
                    Positioned(
                      right: 20,
                      top: 20,
                      child: ClipOval(
                          // ignore: avoid_unnecessary_containers
                          child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.red,
                          ),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(
                            50,
                          ),
                        ),
                        child: const Icon(
                          Icons.arrow_drop_down_outlined,
                          color: Colors.red,
                          size: 40,
                        ),
                      )),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 10,
                          spreadRadius: 0,
                          offset: const Offset(
                            15,
                            12,
                          ))
                    ]),
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.15,
                child: Stack(
                  children: [
                    const Positioned(
                        left: 15,
                        top: 10,
                        child: Text(
                          '28 June 2021, 9:02pm',
                          style: TextStyle(
                              color: Colors.black12,
                              fontWeight: FontWeight.bold),
                        )),
                    const Positioned(
                        left: 15,
                        top: 30,
                        child: Text(
                          'You spent Rp 210.000 for pay',
                          style: TextStyle(
                              color: Colors.deepPurple,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        )),
                    const Positioned(
                        left: 15,
                        top: 45,
                        child: Text(
                          'Tokosbla ijo mera',
                          style: TextStyle(
                              color: Colors.deepPurple,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        )),
                    const Positioned(
                        left: 15,
                        top: 60,
                        child: Text(
                          "'Buy items'",
                          style: TextStyle(
                              color: Colors.black12,
                              fontWeight: FontWeight.bold),
                        )),
                    Positioned(
                      right: 10,
                      child: ClipOval(
                        child: Container(
                          width: 10,
                          height: 10,
                          color: Colors.red,
                        ),
                      ),
                    ),
                    Positioned(
                      right: 20,
                      top: 20,
                      child: ClipOval(
                          // ignore: avoid_unnecessary_containers
                          child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.red,
                          ),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(
                            50,
                          ),
                        ),
                        child: const Icon(
                          Icons.arrow_drop_down_outlined,
                          color: Colors.red,
                          size: 40,
                        ),
                      )),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 10,
                          spreadRadius: 0,
                          offset: const Offset(
                            15,
                            12,
                          ))
                    ]),
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.15,
                child: Stack(
                  children: [
                    const Positioned(
                        left: 15,
                        top: 10,
                        child: Text(
                          '28 June 2021, 9:02pm',
                          style: TextStyle(
                              color: Colors.black12,
                              fontWeight: FontWeight.bold),
                        )),
                    const Positioned(
                        left: 15,
                        top: 30,
                        child: Text(
                          'You spent Rp 210.000 for pay',
                          style: TextStyle(
                              color: Colors.deepPurple,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        )),
                    const Positioned(
                        left: 15,
                        top: 45,
                        child: Text(
                          'Tokosbla ijo mera',
                          style: TextStyle(
                              color: Colors.deepPurple,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        )),
                    const Positioned(
                        left: 15,
                        top: 60,
                        child: Text(
                          "'Buy items'",
                          style: TextStyle(
                              color: Colors.black12,
                              fontWeight: FontWeight.bold),
                        )),
                    Positioned(
                      right: 10,
                      child: ClipOval(
                        child: Container(
                          width: 10,
                          height: 10,
                          color: Colors.red,
                        ),
                      ),
                    ),
                    Positioned(
                      right: 20,
                      top: 20,
                      child: ClipOval(
                          // ignore: avoid_unnecessary_containers
                          child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.red,
                          ),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(
                            50,
                          ),
                        ),
                        child: const Icon(
                          Icons.arrow_drop_down_outlined,
                          color: Colors.red,
                          size: 40,
                        ),
                      )),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 10,
                          spreadRadius: 0,
                          offset: const Offset(
                            15,
                            12,
                          ))
                    ]),
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.15,
                child: Stack(
                  children: [
                    const Positioned(
                        left: 15,
                        top: 10,
                        child: Text(
                          '28 June 2021, 9:02pm',
                          style: TextStyle(
                              color: Colors.black12,
                              fontWeight: FontWeight.bold),
                        )),
                    const Positioned(
                        left: 15,
                        top: 30,
                        child: Text(
                          'You spent Rp 210.000 for pay',
                          style: TextStyle(
                              color: Colors.deepPurple,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        )),
                    const Positioned(
                        left: 15,
                        top: 45,
                        child: Text(
                          'Tokosbla ijo mera',
                          style: TextStyle(
                              color: Colors.deepPurple,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        )),
                    const Positioned(
                        left: 15,
                        top: 60,
                        child: Text(
                          "'Buy items'",
                          style: TextStyle(
                              color: Colors.black12,
                              fontWeight: FontWeight.bold),
                        )),
                    Positioned(
                      right: 10,
                      child: ClipOval(
                        child: Container(
                          width: 10,
                          height: 10,
                          color: Colors.red,
                        ),
                      ),
                    ),
                    Positioned(
                      right: 20,
                      top: 20,
                      child: ClipOval(
                          // ignore: avoid_unnecessary_containers
                          child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.red,
                          ),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(
                            50,
                          ),
                        ),
                        child: const Icon(
                          Icons.arrow_drop_down_outlined,
                          color: Colors.red,
                          size: 40,
                        ),
                      )),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
