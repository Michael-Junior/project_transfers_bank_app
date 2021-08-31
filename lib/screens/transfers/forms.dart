import 'package:flutter/material.dart';
import 'package:project_transfers_bank/components/editor_form.dart';
import 'package:project_transfers_bank/models/transfer.dart';

const _titleAppBar = 'Transferências';
const _descriptionLabelValue = 'Valor';
const _descriptionButton = 'Confirmar';
const _clueFieldNumberAccount = '0000';
const _descriptionLabelNumberAccount = 'Digite o número da conta';

class TransfersFormScreen extends StatelessWidget {
  final TextEditingController _controllerFieldNumberAccount =
  TextEditingController();
  final TextEditingController _controllerFieldValue = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_titleAppBar),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            EditorForm(
                clue: _clueFieldNumberAccount,
                controller: _controllerFieldNumberAccount,
                descriptionLabel: _descriptionLabelNumberAccount),
            EditorForm(
                controller: _controllerFieldValue,
                icon: Icons.monetization_on,
                descriptionLabel: _descriptionLabelValue),
            ElevatedButton(
              onPressed: () => createTransfer(context),
              child: Text(_descriptionButton),
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