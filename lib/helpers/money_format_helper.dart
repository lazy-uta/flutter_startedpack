import 'package:intl/intl.dart';

class MoneyFormatHelper {
  factory MoneyFormatHelper() {
    return _mainMoneyFormatHelper;
  }

  MoneyFormatHelper._internal();

  static final MoneyFormatHelper _mainMoneyFormatHelper =
      MoneyFormatHelper._internal();

  String formatMoney(String money, {bool isUseDecimal = true}) {
    final NumberFormat _idrFormat = NumberFormat.currency(
      locale: 'id_ID',
      symbol: 'Rp. ',
      decimalDigits: 0,
    );

    return isUseDecimal
        ? _idrFormat.format(
            int.parse(
              money.substring(0, money.length - 3),
            ),
          )
        : _idrFormat.format(
            int.parse(money),
          );
  }
}
