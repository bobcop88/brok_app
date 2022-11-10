import 'package:broker_app/pages/inside_pages/my_profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class HomeFirst extends StatefulWidget {
  final PageController controller;
  const HomeFirst({Key? key, required this.controller}) : super(key: key);

  @override
  State<HomeFirst> createState() => _HomeFirstState();
}

class _HomeFirstState extends State<HomeFirst> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.grey.shade200),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Welcome back,',
                            style: TextStyle(
                                color: Colors.grey.shade900,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Alexander!',
                            style: TextStyle(
                                color: Colors.grey.shade900,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Divider(
                        endIndent: 250,
                        color: Colors.black,
                        thickness: 2,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        const BoxShadow(
                            color: Colors.white,
                            offset: const Offset(-3, -3),
                            blurRadius: 10,
                            spreadRadius: 1),
                        BoxShadow(
                            color: Colors.grey.shade500,
                            offset: const Offset(3, 3),
                            blurRadius: 5,
                            spreadRadius: 1),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              const Image(
                                height: 50,
                                image: const AssetImage(
                                    'assets/images/deposit_image.png'),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Easy Deposit',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey.shade900,
                                          fontSize: 25),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Flexible(
                                      child: Text(
                                        'Secure deposit in your trading account now ',
                                        style: TextStyle(
                                            color: Colors.grey.shade700),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          widget.controller.jumpToPage(1);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              const BoxShadow(
                                offset: Offset(4, 6),
                                spreadRadius: -2,
                                blurRadius: 14,
                                color: Color.fromRGBO(155, 155, 155, 1),
                              ),
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: const Image(
                                      width: 100,
                                      image: const AssetImage(
                                          'assets/images/deposit_image.png'),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                const Text(
                                  'Easy Deposit',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromRGBO(172, 25, 41, 1),
                                      fontSize: 25),
                                  textAlign: TextAlign.center,
                                ),
                                const Divider(
                                  color: Color.fromRGBO(172, 25, 41, 1),
                                  indent: 60,
                                  endIndent: 60,
                                  thickness: 2,
                                ),
                                Row(
                                  children: [
                                    const Flexible(
                                      child: Text(
                                        'Secure deposit in your trading account now ',
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(172, 25, 41, 1)),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          widget.controller.jumpToPage(2);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(172, 25, 41, 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(25)),
                                  child: const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Image(
                                        height: 30,
                                        image: const AssetImage(
                                            'assets/images/calendar_image.png'),
                                      )),
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Row(
                                  children: [
                                    const Expanded(
                                      child: const Text(
                                        'Economic\nCalendar',
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Image(
                                      height: 30,
                                      image: AssetImage('assets/just_logo.png'),
                                    )),
                                const SizedBox(
                                  width: 8,
                                ),
                                Row(
                                  children: [
                                    const Expanded(
                                      child: Text(
                                        'About us',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        const BoxShadow(
                          offset: const Offset(4, 6),
                          spreadRadius: -2,
                          blurRadius: 14,
                          color: const Color.fromRGBO(155, 155, 155, 1),
                        )
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          const Image(
                            width: 80,
                            image: const AssetImage(
                                'assets/images/partner_image.png'),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text(
                                      'IB in 1 click',
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                          color: const Color.fromRGBO(
                                              172, 25, 41, 1)),
                                    ),
                                  ],
                                ),
                                const Divider(
                                  indent: 80,
                                  endIndent: 80,
                                ),
                                Row(
                                  children: [
                                    const Expanded(
                                      child: Text(
                                        'Competitive payouts to every IB',
                                        style: TextStyle(fontSize: 12),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    const Text(
                                      'Become IB now',
                                      style: const TextStyle(
                                          color: Color.fromRGBO(172, 25, 41, 1),
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const Icon(
                                      Icons.arrow_circle_right,
                                      color: Color.fromRGBO(172, 25, 41, 1),
                                      size: 18,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () => widget.controller.jumpToPage(3),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(172, 25, 41, 1),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              const Icon(
                                Icons.verified_user,
                                size: 40,
                                color: Colors.white,
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    const Text(
                                      'Complete your verification now',
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          color: Colors.white),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    const Icon(
                                      Icons.arrow_circle_right_rounded,
                                      color: Colors.white,
                                      size: 18,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
