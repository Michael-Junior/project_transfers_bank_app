import 'package:flutter/material.dart';
import 'package:project_transfers_bank/screens/transfers/transfers.dart';

void main() => runApp(TransferBank());

class TransferBank extends StatelessWidget {

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        body: Center(
          child: TransfersScreen(),
        ),
      ),
    );
  }
}