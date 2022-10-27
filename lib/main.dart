import 'package:broker_app/pages/homepage/home_page.dart';
import 'package:broker_app/pages/login_page.dart';
import 'package:broker_app/pages/register_page.dart';
import 'package:broker_app/pages/splash_screen.dart';
import 'package:broker_app/pages/verification/id_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/home': (context) => HomePage(),
        '/kyc': (context) => KycPage(),
      },
    );
  }
}
