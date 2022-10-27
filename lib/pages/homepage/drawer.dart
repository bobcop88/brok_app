import 'package:flutter/material.dart';

import '../../main.dart';

class DrawerApp extends StatefulWidget {
  final PageController controller;
  final GlobalKey<ScaffoldState> scaffoldKey;
  const DrawerApp(
      {Key? key, required this.controller, required this.scaffoldKey})
      : super(key: key);

  @override
  State<DrawerApp> createState() => _DrawerAppState();
}

class _DrawerAppState extends State<DrawerApp> {
  final PageController menuController = PageController();
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            decoration: const BoxDecoration(color: Colors.black),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    SafeArea(
                      child: Image(
                        width: 100,
                        height: 80,
                        image: AssetImage('assets/just_logo.png'),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Anthony Smith',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'test@test.com',
                      style: TextStyle(color: Colors.white, fontSize: 13),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: const [
                        Text(
                          'Pending verification',
                          style: TextStyle(
                              color: Colors.yellow,
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(4, 6),
                            spreadRadius: -2,
                            blurRadius: 14,
                            color: Color.fromRGBO(155, 155, 155, 1),
                          ),
                        ],
                        color: Colors.white,
                      ),
                      child: ListTile(
                        leading: const CircleAvatar(
                            radius: 18,
                            backgroundColor: Color.fromRGBO(172, 25, 41, 1),
                            child: Icon(
                              Icons.home,
                              color: Colors.white,
                              size: 18.0,
                            )),
                        title: const Text('Home'),
                        contentPadding: const EdgeInsets.only(left: 12.0),
                        onTap: () {
                          widget.controller.jumpToPage(0);
                          widget.scaffoldKey.currentState!.closeDrawer();
                        },
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(4, 6),
                            spreadRadius: -2,
                            blurRadius: 14,
                            color: Color.fromRGBO(155, 155, 155, 1),
                          ),
                        ],
                        color: Colors.white,
                      ),
                      child: ListTile(
                        leading: const CircleAvatar(
                            radius: 18,
                            backgroundColor: Color.fromRGBO(172, 25, 41, 1),
                            child: Icon(
                              Icons.currency_exchange,
                              color: Colors.white,
                              size: 18.0,
                            )),
                        title: const Text('Deposits'),
                        contentPadding: const EdgeInsets.only(left: 12.0),
                        onTap: () {
                          widget.controller.jumpToPage(1);
                          widget.scaffoldKey.currentState!.closeDrawer();
                        },
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(4, 6),
                            spreadRadius: -2,
                            blurRadius: 14,
                            color: Color.fromRGBO(155, 155, 155, 1),
                          ),
                        ],
                        color: Colors.white,
                      ),
                      child: ListTile(
                        leading: const CircleAvatar(
                            radius: 18,
                            backgroundColor: Color.fromRGBO(172, 25, 41, 1),
                            child: Icon(
                              Icons.calendar_month,
                              color: Colors.white,
                              size: 18.0,
                            )),
                        title: const Text('Economic Calendar'),
                        contentPadding: const EdgeInsets.only(left: 12.0),
                        onTap: () {
                          widget.controller.jumpToPage(2);
                          widget.scaffoldKey.currentState!.closeDrawer();
                        },
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(4, 6),
                            spreadRadius: -2,
                            blurRadius: 14,
                            color: Color.fromRGBO(155, 155, 155, 1),
                          ),
                        ],
                        color: Colors.white,
                      ),
                      child: ListTile(
                        leading: const CircleAvatar(
                            radius: 18,
                            backgroundColor: Color.fromRGBO(172, 25, 41, 1),
                            child: Icon(
                              Icons.person_outline,
                              color: Colors.white,
                              size: 18.0,
                            )),
                        title: const Text('My Profile'),
                        contentPadding: const EdgeInsets.only(left: 12.0),
                        onTap: () {
                          widget.controller.jumpToPage(3);
                          widget.scaffoldKey.currentState!.closeDrawer();
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Spacer(),
          Row(
            children: [
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(172, 25, 41, 1)),
                  child: SafeArea(
                      top: false,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Flexible(
                                child: Text(
                                  '2022 - Developed by',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                child: Image(
                                  height: 50,
                                  image: AssetImage('assets/inscale_logo.png'),
                                ),
                              ),
                            ],
                          ),
                        ],
                      )),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
