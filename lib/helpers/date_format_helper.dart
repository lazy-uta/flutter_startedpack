import 'package:intl/intl.dart';

class DateFormatHelper {
  factory DateFormatHelper() {
    return _mainDateFormatHelper;
  }

  DateFormatHelper._internal();

  static final DateFormatHelper _mainDateFormatHelper =
      DateFormatHelper._internal();

  String formatDate(String displayFormat, String dateTime,
      {String serverFormat = 'yyyy-MM-dd HH:mm:ss'}) {
    final DateFormat _serverFormater = DateFormat(serverFormat);
    final DateFormat _displayFormater = DateFormat(displayFormat, 'id_ID');
    final String _formattedDate = _displayFormater.format(
      _serverFormater.parse(
        dateTime,
      ),
    );
    return _formattedDate;
  }
}
