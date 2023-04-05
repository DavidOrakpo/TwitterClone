import 'package:intl/intl.dart';

/// Handles validation and conversions of different objects in the app
class Validators {
  /// Converts a given DateTime object to a string in the format "Mon, 12 Jan"
  static String dateTimeToString(DateTime? dateTime) {
    if (dateTime != null) {
      final DateFormat format = DateFormat("EEE, d MMM");
      return format.format(dateTime);
    } else {
      return "";
    }
  }

  /// Converts a given DateTime object to a string in the format "1 PM"
  static String dateTimeToAMString(DateTime? dateTime) {
    if (dateTime != null) {
      final DateFormat format = DateFormat("h a");
      return format.format(dateTime);
    } else {
      return "";
    }
  }

  /// Converts a given DateTime object to a string in the format "Wednesday"
  static String dateTimeToWeekDay(DateTime? dateTime) {
    if (dateTime != null) {
      final DateFormat format = DateFormat("EEEE");
      return format.format(dateTime);
    } else {
      return "";
    }
  }
}
