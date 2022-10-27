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
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(color: Colors.black),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 80,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(50.0),
                            child: Image(
                              image: AssetImage('assets/logo_hor.png'),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(15, 0, 15, 0),
                                      child: TextField(
                                        cursorColor:
                                            Color.fromRGBO(172, 25, 41, 1),
                                        style: TextStyle(color: Colors.white),
                                        mouseCursor: MouseCursor.defer,
                                        decoration: InputDecoration(
                                          enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.white),
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.white),
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          labelText: 'Account name',
                                          labelStyle:
                                              TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 25,
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(15, 0, 15, 0),
                                      child: TextField(
                                        cursorColor:
                                            Color.fromRGBO(172, 25, 41, 1),
                                        obscureText:
                                            _hidePassword ? false : true,
                                        style: TextStyle(color: Colors.white),
                                        mouseCursor: MouseCursor.defer,
                                        decoration: InputDecoration(
                                          enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.white),
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.white),
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          labelText: 'Password',
                                          labelStyle:
                                              TextStyle(color: Colors.white),
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
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    HomePage()));
                                      },
                                      child: Text('Log in'),
                                      style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  Color.fromRGBO(
                                                      172, 25, 41, 1))),
                                    ),
                                    const SizedBox(
                                      height: 40,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        Text(
                                          'Don\u0027t have an account yet?',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        TextButton(
                                          child: Text(
                                            'Register now',
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    172, 25, 41, 1),
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15),
                                          ),
                                          onPressed: () {
                                            Navigator.pushReplacement(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        RegisterPage()));
                                          },
                                          style: ButtonStyle(
                                            visualDensity:
                                                VisualDensity.compact,
                                            padding: MaterialStateProperty.all(
                                                EdgeInsets.fromLTRB(
                                                    0, 0, 0, 0)),
                                            tapTargetSize: MaterialTapTargetSize
                                                .shrinkWrap,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 100,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
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
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
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
