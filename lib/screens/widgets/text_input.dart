import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';

class TextInputFormatterBank {
  static CurrencyTextInputFormatter currency() {
    return CurrencyTextInputFormatter(symbol: 'R\$', locale: 'ptBR');
  }
}