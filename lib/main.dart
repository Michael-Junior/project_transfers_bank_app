import 'package:flutter/material.dart';
import 'package:project_transfers_bank/screens/transfers/transfers.dart';

void main() => runApp(BankApp());

class BankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: TransfersScreen(),
    );
  }
}









