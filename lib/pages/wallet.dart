import 'package:flutter/material.dart';
import 'package:yourschef/widgets/Widgets_support.dart';

class Wallet extends StatefulWidget {
  const Wallet({super.key});

  @override
  State<Wallet> createState() => _Wallet();
}

class _Wallet extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50.0),
        child: Column(
          children: [
            Material(
              elevation: 2.0,
              child: Container(
                child: Center(
                  child: Text(
                    "Wallet",
                    style: AppWidget.HeadLinetextFieldStyle(),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Color(0xFFF2F2F2)),
              child: Row(
                children: [
                  Icon(
                    Icons.account_balance_wallet,
                    size: 50,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
