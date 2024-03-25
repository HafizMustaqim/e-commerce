import 'package:intl/intl.dart';

class Formatter {
  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd-MMM-yyyy').format(date);
  }

  static String formatCurrency(double amount) {
    return NumberFormat.currency(locale: 'en_Us', symbol: '\$').format(amount);
  }

  static String formatPhoneNumber(String phoneNumber) {
    if (phoneNumber.length == 10) {
        // For fixed line numbers
        return "${phoneNumber.substring(0, 3)}-${phoneNumber.substring(3, 7)} ${phoneNumber.substring(7)}";
    } else if (phoneNumber.length == 11 && phoneNumber.startsWith("01")) {
        // For mobile numbers
        return "${phoneNumber.substring(0, 3)}-${phoneNumber.substring(3, 7)} ${phoneNumber.substring(7)}";
    } else if (phoneNumber.length == 12 && phoneNumber.startsWith("0")) {
        // For fixed line numbers with area code
        return "${phoneNumber.substring(0, 3)}-${phoneNumber.substring(3, 6)} ${phoneNumber.substring(6)}";
    }

    return phoneNumber;
  }

  
}