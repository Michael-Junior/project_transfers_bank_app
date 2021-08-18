import 'package:flutter/material.dart';
import 'components/items_transfer.dart';
import 'components/transfers.dart';

class TransfersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BankApp'),
      ),
      body: ItemTransfers(Transfers(100.0, 9594)),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}