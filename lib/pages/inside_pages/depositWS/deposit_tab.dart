import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttericon/font_awesome5_icons.dart';

class DepositTab extends StatefulWidget {
  const DepositTab({Key? key}) : super(key: key);

  @override
  State<DepositTab> createState() => _DepositTabState();
}

class _DepositTabState extends State<DepositTab> {
  final List<String> listAccount = [' - ', 'test123', 'test000', 'test898'];
  final List<String> listCurrency = ['EUR', 'USD', 'GBP'];

  String accountValue = ' - ';
  String currencyValue = 'EUR';
  String amountValue = ' - ';
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    FontAwesome5.money_check,
                    size: 20,
                    color: Color.fromRGBO(
                      172,
                      25,
                      41,
                      1,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Deposit Funds',
                    style: TextStyle(
                        color: Color.fromRGBO(172, 25, 41, 1),
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ],
              ),
              const Divider(
                thickness: 3,
                color: Color.fromRGBO(172, 25, 41, 1),
                indent: 150,
                endIndent: 150,
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Select account'),
                        const SizedBox(
                          width: 10,
                        ),
                        Flexible(
                          child: DropdownButtonFormField(
                            decoration: InputDecoration(
                                isDense: true,
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.grey.shade300),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.grey.shade300),
                                ),
                                contentPadding:
                                    const EdgeInsets.fromLTRB(10, 3, 0, 3)),
                            value: accountValue,
                            items: listAccount
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            onChanged: (String? value) {
                              // This is called when the user selects an item.
                              setState(() {
                                accountValue = value!;
                                amountValue = '2000 EUR';
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Icon(
                          Icons.add,
                          size: 18,
                          color: Color.fromRGBO(172, 25, 41, 1),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Open new account',
                          style:
                              TextStyle(color: Color.fromRGBO(172, 25, 41, 1)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: Row(
                  children: [
                    const Text('Balance available: '),
                    Text(amountValue),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Amount'),
                    const SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      child: TextFormField(
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            contentPadding:
                                const EdgeInsets.fromLTRB(10, 5, 0, 5),
                            isDense: true,
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey.shade300),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey.shade300),
                            ),
                            hintText: 'Insert Amount',
                            hintStyle: const TextStyle(fontSize: 13)),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Currency'),
                    const SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      child: DropdownButtonFormField(
                        decoration: InputDecoration(
                            isDense: true,
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey.shade300),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey.shade300),
                            ),
                            contentPadding:
                                const EdgeInsets.fromLTRB(10, 3, 0, 3)),
                        value: currencyValue,
                        items: listCurrency
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (String? value) {
                          // This is called when the user selects an item.
                          setState(() {
                            currencyValue = value!;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        const Color.fromRGBO(172, 25, 41, 1))),
                child: const Text('Proceed'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class Account {
  String? accountNumber;
  String? accountCurrency;
  String? accountBalance;

  Account({this.accountNumber, this.accountCurrency, this.accountBalance});
}
