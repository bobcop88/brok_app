import 'package:broker_app/pages/homepage/drawer.dart';
import 'package:broker_app/pages/inside_pages/depositWS/deposit_page.dart';
import 'package:broker_app/pages/inside_pages/home_first.dart';
import 'package:broker_app/pages/inside_pages/my_profile_page.dart';
import 'package:broker_app/pages/inside_pages/economic_calendar.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final PageController menuController = PageController();
  void pageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: DrawerApp(
        controller: menuController,
        scaffoldKey: scaffoldKey,
      ),
      appBar: AppBar(
        backgroundColor: Colors.grey.shade900,
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: () {
            scaffoldKey.currentState!.openDrawer();
          },
        ),
        title: Image.asset(
          'assets/logo_hor_white.png',
          height: 50.0,
        ),
      ),
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: PageView(
                      physics: const NeverScrollableScrollPhysics(),
                      onPageChanged: (index) {
                        pageChanged(index);
                      },
                      controller: menuController,
                      children: [
                        HomeFirst(
                          controller: menuController,
                        ),
                        DepositPage(
                          controller: menuController,
                        ),
                        PromoPage(controller: menuController),
                        MyProfile(
                          controller: menuController,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(color: Colors.grey.shade200),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
          child: GNav(
            backgroundColor: Colors.grey.shade200,
            gap: 8,
            activeColor: const Color.fromRGBO(172, 25, 41, 1),
            // iconSize: 20,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            duration: const Duration(milliseconds: 400),
            color: Colors.grey.shade800,
            // tabBackgroundColor: Colors.grey.shade200,
            // tabShadow: [
            //   BoxShadow(
            //       color: Colors.grey.shade100,
            //       offset: Offset(-5, -5),
            //       blurRadius: 1,
            //       spreadRadius: 1),
            //   BoxShadow(
            //       color: Colors.grey.shade500,
            //       offset: Offset(3, 3),
            //       blurRadius: 1,
            //       spreadRadius: 1),
            // ],
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: FontAwesome5.credit_card,
                text: 'Deposits',
              ),
              GButton(
                icon: Icons.calendar_month,
                text: 'Calendar',
              ),
              GButton(
                icon: Icons.person,
                text: 'Profile',
              ),
            ],
            selectedIndex: _selectedIndex,
            onTabChange: (index) {
              setState(() {
                _selectedIndex = index;
                menuController.jumpToPage(_selectedIndex);
              });
            },
          ),
        ),
      ),
    );
  }
}
