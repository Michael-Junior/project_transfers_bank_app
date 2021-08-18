import 'package:flutter/material.dart';
import 'screens/transfers_screen/transfers_screen.dart';

void main() => runApp(BankApp());

class BankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        home: TransfersScreen());
  }
}
