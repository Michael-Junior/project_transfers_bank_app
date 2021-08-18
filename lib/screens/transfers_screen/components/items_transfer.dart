import 'package:flutter/material.dart';
import 'package:project_transfers_bank/screens/transfers_screen/components/transfers.dart';

class ItemTransfers extends StatelessWidget {

  final Transfers _transfers;

  const ItemTransfers(this._transfers);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: ListTile(
            leading: Icon(Icons.monetization_on),
            title: Text(_transfers.numberAccount.toString()),
            subtitle: Text(_transfers.valueAccount.toString()),
          ),
        ),
      ],
    );
  }
}