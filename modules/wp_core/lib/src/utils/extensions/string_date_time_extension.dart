import 'package:intl/intl.dart';
import 'package:wp_core/src/utils/date_formats.dart';

extension StringDateTimeExtension on String {
  /// Convert string to DateTime based on the provided [inputFormat].
  /// Throws a [FormatException] if parsing fails.
  DateTime? toDateTime({String inputFormat = DateFormats.yyyyMmddHhmmss}) {
    try {
      final formatter = DateFormat(inputFormat);
      return formatter.parse(this);
    } catch (_) {
      return null;
    }
  }

  /// Convert string to a formatted date string based on [inputFormat] and [outputFormat].
  /// Returns `null` if parsing fails.
  String? toFormattedDate({
    String inputFormat = DateFormats.yyyyMmddHhmmss,
    String outputFormat = DateFormats.hhmmDdMmYyyy,
  }) {
    try {
      final dateTime = toDateTime(inputFormat: inputFormat);
      if (dateTime != null) {
        return DateFormat(outputFormat).format(dateTime);
      }
      return null;
    } catch (_) {
      return null;
    }
  }
}
