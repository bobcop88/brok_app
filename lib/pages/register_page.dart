import 'package:broker_app/pages/login_page.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(50, 10, 50, 0),
                child: Image(
                  image: AssetImage('assets/broker_image_login.png'),
                ),
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: const [
              //     Text(
              //       'Register',
              //       style: TextStyle(
              //           color: Colors.white,
              //           fontWeight: FontWeight.bold,
              //           fontSize: 20),
              //     ),
              //   ],
              // ),
              // const SizedBox(
              //   height: 15,
              // ),
              Flexible(
                child: SingleChildScrollView(
                  child: SafeArea(
                    child: Column(
                      children: [
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
                              cursorColor: const Color.fromRGBO(172, 25, 41, 1),
                              style: const TextStyle(color: Colors.white),
                              mouseCursor: MouseCursor.defer,
                              decoration: InputDecoration(
                                isDense: true,
                                contentPadding: const EdgeInsets.all(15),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(20)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        const BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.circular(20)),
                                labelText: 'First name',
                                labelStyle:
                                    const TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
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
                              cursorColor: const Color.fromRGBO(172, 25, 41, 1),
                              style: const TextStyle(color: Colors.white),
                              mouseCursor: MouseCursor.defer,
                              decoration: InputDecoration(
                                isDense: true,
                                contentPadding: const EdgeInsets.all(15),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(20)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        const BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.circular(20)),
                                labelText: 'Last name',
                                labelStyle:
                                    const TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
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
                              cursorColor: const Color.fromRGBO(172, 25, 41, 1),
                              style: const TextStyle(color: Colors.white),
                              mouseCursor: MouseCursor.defer,
                              decoration: InputDecoration(
                                isDense: true,
                                contentPadding: const EdgeInsets.all(15),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(20)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        const BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.circular(20)),
                                labelText: 'Email Address',
                                labelStyle:
                                    const TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
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
                              cursorColor: const Color.fromRGBO(172, 25, 41, 1),
                              style: const TextStyle(color: Colors.white),
                              mouseCursor: MouseCursor.defer,
                              decoration: InputDecoration(
                                isDense: true,
                                contentPadding: const EdgeInsets.all(15),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(20)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        const BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.circular(20)),
                                labelText: 'Phone number',
                                labelStyle:
                                    const TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
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
                              cursorColor: const Color.fromRGBO(172, 25, 41, 1),
                              style: const TextStyle(color: Colors.white),
                              mouseCursor: MouseCursor.defer,
                              decoration: InputDecoration(
                                isDense: true,
                                contentPadding: const EdgeInsets.all(15),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(20)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        const BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.circular(20)),
                                labelText: 'Country',
                                labelStyle:
                                    const TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginPage()));
                          },
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  const Color.fromRGBO(172, 25, 41, 1))),
                          child: const Text('Register now'),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              'Already have an account?',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                              onPressed: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const LoginPage()));
                              },
                              style: ButtonStyle(
                                visualDensity: VisualDensity.compact,
                                padding: MaterialStateProperty.all(
                                    const EdgeInsets.fromLTRB(0, 0, 0, 0)),
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              ),
                              child: const Text(
                                'Login now',
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    color: Color.fromRGBO(172, 25, 41, 1),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
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
              const SizedBox(
                height: 10,
              )
            ],
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
