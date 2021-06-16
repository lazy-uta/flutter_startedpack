import 'package:intl/intl.dart';

class MainMoneyFormatHelper {
  factory MainMoneyFormatHelper() {
    return _mainMoneyFormatHelper;
  }

  MainMoneyFormatHelper._internal();

  static final MainMoneyFormatHelper _mainMoneyFormatHelper =
      MainMoneyFormatHelper._internal();

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
