import 'package:broker_app/pages/homepage/home_page.dart';
import 'package:broker_app/pages/register_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _hidePassword = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Container(
        decoration: BoxDecoration(color: Colors.grey.shade900),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          resizeToAvoidBottomInset: true,
          body: SafeArea(
            bottom: false,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: const [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 50),
                        child: Image(
                          image: AssetImage('assets/broker_image_login.png'),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 80,
                ),
                Flexible(
                  flex: 4,
                  child: SingleChildScrollView(
                    child: SafeArea(
                      bottom: false,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(15, 10, 15, 0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.grey.shade900,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  const BoxShadow(
                                      color: Colors.black,
                                      offset: Offset(4, 4),
                                      blurRadius: 5,
                                      spreadRadius: 1),
                                  BoxShadow(
                                      color: Colors.grey.shade800,
                                      offset: const Offset(-2, -2),
                                      blurRadius: 6,
                                      spreadRadius: 0.1),
                                ],
                              ),
                              child: TextField(
                                cursorColor:
                                    const Color.fromRGBO(172, 25, 41, 1),
                                style: const TextStyle(color: Colors.white),
                                mouseCursor: MouseCursor.defer,
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(20)),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(20)),
                                  labelText: 'Account name',
                                  labelStyle:
                                      const TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.grey.shade900,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  const BoxShadow(
                                      color: Colors.black,
                                      offset: Offset(4, 4),
                                      blurRadius: 5,
                                      spreadRadius: 1),
                                  BoxShadow(
                                      color: Colors.grey.shade800,
                                      offset: const Offset(-2, -2),
                                      blurRadius: 6,
                                      spreadRadius: 0.1),
                                ],
                              ),
                              child: TextField(
                                cursorColor:
                                    const Color.fromRGBO(172, 25, 41, 1),
                                obscureText: _hidePassword ? false : true,
                                style: const TextStyle(color: Colors.white),
                                mouseCursor: MouseCursor.defer,
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(20)),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(20)),
                                  labelText: 'Password',
                                  labelStyle:
                                      const TextStyle(color: Colors.white),
                                  suffixIcon: GestureDetector(
                                    onTap: _showPassword,
                                    child: Icon(
                                      _hidePassword
                                          ? Icons.visibility_off
                                          : Icons.visibility,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const HomePage()));
                            },
                            child: const Text(
                              'Log in',
                              style: const TextStyle(fontSize: 16),
                            ),
                            style: ButtonStyle(
                                elevation: MaterialStateProperty.all(15),
                                backgroundColor: MaterialStateProperty.all(
                                    const Color.fromRGBO(172, 25, 41, 1))),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                'Don\u0027t have an account yet?',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextButton(
                                child: const Text(
                                  'Register now',
                                  style: const TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: Color.fromRGBO(172, 25, 41, 1),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                                onPressed: () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const RegisterPage()));
                                },
                                style: ButtonStyle(
                                  visualDensity: VisualDensity.compact,
                                  padding: MaterialStateProperty.all(
                                      const EdgeInsets.fromLTRB(0, 0, 0, 0)),
                                  tapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Expanded(
                        child: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam suscipit quis eros et maximus. Mauris justo lectus, scelerisque a ipsum a, faucibus malesuada erat. Vestibulum eget urna at nisi tincidunt laoreet. Sed euismod nisi dolor, hendrerit eleifend urna rutrum eget. Etiam condimentum placerat mi eu lacinia.',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _showPassword() {
    setState(() {
      _hidePassword = !_hidePassword;
    });
  }
}
