import 'package:flutter/material.dart';
import 'package:project_transfers_bank/components/editor_form.dart';
import 'package:project_transfers_bank/models/transfer.dart';

class TransfersFormScreen extends StatelessWidget {
  final TextEditingController _controllerFieldNumberAccount =
  TextEditingController();
  final TextEditingController _controllerFieldValue = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transferências'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            EditorForm(
                clue: '0000',
                controller: _controllerFieldNumberAccount,
                descriptionLabel: 'Digite o número da conta'),
            EditorForm(
                clue: '0.00',
                controller: _controllerFieldValue,
                icon: Icons.monetization_on,
                descriptionLabel: 'Valor'),
            ElevatedButton(
              onPressed: () => createTransfer(context),
              child: Text('Confirmar'),
            ),
          ],
        ),
      ),
    );
  }

  void createTransfer(BuildContext context) {
    final int? numberAccount = int.tryParse(_controllerFieldNumberAccount.text);
    final double? valueTransfer = double.tryParse(_controllerFieldValue.text);
    if (numberAccount != null && valueTransfer != null) {
      final transferCreate = Transfers(valueTransfer, numberAccount);
      Navigator.pop(context, transferCreate);
    }
  }
}