import 'package:broker_app/pages/inside_pages/depositWS/deposit_tab.dart';
import 'package:broker_app/pages/inside_pages/depositWS/withdrawals_tab.dart';
import 'package:flutter/material.dart';

class DepositPage extends StatefulWidget {
  final PageController controller;
  const DepositPage({Key? key, required this.controller}) : super(key: key);

  @override
  State<DepositPage> createState() => _DepositPageState();
}

class _DepositPageState extends State<DepositPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.grey.shade100,
                border:
                    Border(bottom: BorderSide(color: Colors.grey.shade200))),
            child: DefaultTabController(
              length: 2,
              initialIndex: 1,
              child: TabBar(
                controller: tabController,
                tabs: const [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Deposit',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Withdrawals',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
                padding: const EdgeInsets.only(top: 10),
                // unselectedLabelColor: Color.fromRGBO(15, 48, 65, 1),
                // labelColor: Color.fromRGBO(250, 169, 22, 1),
                indicatorColor: const Color.fromRGBO(172, 25, 41, 1),
              ),
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: const [
                DepositTab(),
                WithdrawalsTab(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
