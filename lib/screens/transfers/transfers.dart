import 'package:flutter/material.dart';
import 'package:project_transfers_bank/models/transfer.dart';
import 'package:project_transfers_bank/screens/transfers/forms.dart';

const _titleAppBar = 'BankApp';

class TransfersScreen extends StatefulWidget {
  final List<Transfers> _transfers = [];

  @override
  _TransfersScreenState createState() => _TransfersScreenState();
}

class _TransfersScreenState extends State<TransfersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_titleAppBar),
      ),
      body: ListView.builder(
        itemCount: widget._transfers.length,
        itemBuilder: (context, index) {
          final transfer = widget._transfers[index];
          return ItemTransfers(transfer);
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          final Future<Transfers?> future = Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return TransfersFormScreen();
              },
            ),
          );
          future.then(
                (transferReceived) {
              Future.delayed(
                Duration(seconds: 1),
                    () {
                  if (transferReceived != null) {
                    setState(
                          () {
                        widget._transfers.add(transferReceived);
                      },
                    );
                  }
                },
              );
            },
          );
        },
      ),
    );
  }
}

class ItemTransfers extends StatelessWidget {
  final Transfers _transfers;

  const ItemTransfers(this._transfers);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text(_transfers.numberAccount.toString()),
        subtitle: Text(_transfers.valueTransfer.toString()),
      ),
    );
  }
}