import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:fluttericon/octicons_icons.dart';
import 'package:fluttericon/typicons_icons.dart';
import 'package:fluttericon/web_symbols_icons.dart';

class MyProfile extends StatefulWidget {
  final PageController controller;
  const MyProfile({Key? key, required this.controller}) : super(key: key);

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      radius: 35,
                      foregroundImage:
                          AssetImage('assets/images/user_image.png'),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Anthony Smith',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'test@test.com',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          'Reset Password',
                          style: TextStyle(
                            color: Color.fromRGBO(172, 25, 41, 1),
                            fontSize: 12,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(4, 6),
                        spreadRadius: -2,
                        blurRadius: 14,
                        color: Color.fromRGBO(155, 155, 155, 1),
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Icon(
                          FontAwesome5.user_alt,
                          color: Color.fromRGBO(172, 25, 41, 1),
                        ),
                      ),
                      Text(
                        'Profile',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Octicons.verified,
                        color: Colors.green,
                        size: 14,
                      ),
                      Text(
                        ' Verified',
                        style: TextStyle(color: Colors.green, fontSize: 11),
                      ),
                      Spacer(),
                      Icon(
                        WebSymbols.right_circle,
                        color: Color.fromRGBO(172, 25, 41, 1),
                        size: 18,
                      ),
                      SizedBox(
                        width: 10,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: GestureDetector(
                  onTap: () => Navigator.of(context).pushNamed('/kyc'),
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(4, 6),
                          spreadRadius: -2,
                          blurRadius: 14,
                          color: Color.fromRGBO(155, 155, 155, 1),
                        ),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Icon(
                            FontAwesome5.globe,
                            color: Color.fromRGBO(172, 25, 41, 1),
                          ),
                        ),
                        Text(
                          'KYC verification',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Octicons.verified,
                          color: Colors.green,
                          size: 14,
                        ),
                        Text(
                          ' Verified',
                          style: TextStyle(color: Colors.green, fontSize: 11),
                        ),
                        Spacer(),
                        Icon(
                          WebSymbols.right_circle,
                          color: Color.fromRGBO(172, 25, 41, 1),
                          size: 18,
                        ),
                        SizedBox(
                          width: 10,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        // Padding(
        //   padding: const EdgeInsets.all(10.0),
        //   child: Row(
        //     children: [
        //       Expanded(
        //         flex: 2,
        //         child: Container(
        //           decoration: BoxDecoration(
        //             boxShadow: const [
        //               BoxShadow(
        //                 offset: Offset(4, 6),
        //                 spreadRadius: -2,
        //                 blurRadius: 14,
        //                 color: Color.fromRGBO(155, 155, 155, 1),
        //               ),
        //             ],
        //             color: Colors.white,
        //             borderRadius: BorderRadius.circular(15),
        //           ),
        //           child: Row(
        //             children: [
        //               const Padding(
        //                 padding: EdgeInsets.all(15.0),
        //                 child: Icon(
        //                   FontAwesome5.map_marked_alt,
        //                   color: Color.fromRGBO(172, 25, 41, 1),
        //                 ),
        //               ),
        //               const Text(
        //                 'Proof of Address',
        //                 style: TextStyle(
        //                     color: Colors.black,
        //                     fontSize: 15,
        //                     fontWeight: FontWeight.bold),
        //               ),
        //               const SizedBox(
        //                 width: 5,
        //               ),
        //               Icon(
        //                 Octicons.alert,
        //                 color: Colors.yellow[900],
        //                 size: 14,
        //               ),
        //               Text(
        //                 ' Pending',
        //                 style:
        //                     TextStyle(color: Colors.yellow[900], fontSize: 11),
        //               ),
        //               const Spacer(),
        //               const Icon(
        //                 WebSymbols.right_circle,
        //                 color: Color.fromRGBO(172, 25, 41, 1),
        //                 size: 18,
        //               ),
        //               const SizedBox(
        //                 width: 10,
        //               )
        //             ],
        //           ),
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(4, 6),
                        spreadRadius: -2,
                        blurRadius: 14,
                        color: Color.fromRGBO(155, 155, 155, 1),
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Icon(
                          FontAwesome5.user_friends,
                          color: Color.fromRGBO(172, 25, 41, 1),
                        ),
                      ),
                      Text(
                        'IB',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Become IB now!',
                        style: TextStyle(color: Colors.green, fontSize: 13),
                      ),
                      Spacer(),
                      Icon(
                        WebSymbols.right_circle,
                        color: Color.fromRGBO(172, 25, 41, 1),
                        size: 18,
                      ),
                      SizedBox(
                        width: 10,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(4, 6),
                        spreadRadius: -2,
                        blurRadius: 14,
                        color: Color.fromRGBO(155, 155, 155, 1),
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Icon(
                          WebSymbols.chat,
                          color: Color.fromRGBO(172, 25, 41, 1),
                        ),
                      ),
                      Text(
                        'Chat',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Need help?',
                        style: TextStyle(color: Colors.green, fontSize: 13),
                      ),
                      Spacer(),
                      Icon(
                        WebSymbols.right_circle,
                        color: Color.fromRGBO(172, 25, 41, 1),
                        size: 18,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(4, 6),
                        spreadRadius: -2,
                        blurRadius: 14,
                        color: Color.fromRGBO(155, 155, 155, 1),
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Icon(
                          FontAwesome5.chart_line,
                          color: Color.fromRGBO(172, 25, 41, 1),
                        ),
                      ),
                      Text(
                        'Trade now',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Image(
                        height: 50,
                        image: AssetImage('assets/images/metatrader_logo.png'),
                      ),
                      Spacer(),
                      Icon(
                        WebSymbols.right_circle,
                        color: Color.fromRGBO(172, 25, 41, 1),
                        size: 18,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
