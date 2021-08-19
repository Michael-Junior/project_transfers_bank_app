class Transfers {
  Transfers(this.valueTransfer, this.numberAccount);

  final double valueTransfer;
  final int numberAccount;

  @override
  String toString() {
    return 'Transfers{valueTransfer: $valueTransfer, numberAccount: $numberAccount}';
  }
}