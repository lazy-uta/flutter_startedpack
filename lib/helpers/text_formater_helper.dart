class TextFormaterHelper {
  factory TextFormaterHelper() {
    return _textFormaterHelper;
  }

  TextFormaterHelper._internal();

  static final TextFormaterHelper _textFormaterHelper =
      TextFormaterHelper._internal();

  String formatFourLetter(String value) {
    final result = value.replaceAllMapped(
        // ignore: unnecessary_raw_strings
        RegExp(r'.{4}'),
        (match) => '${match.group(0)} ');
    return result;
  }
}
