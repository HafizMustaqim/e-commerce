// exceptions/custom_format_exception.dart
class CustomFormatException implements Exception {
  final String message;

  //defaul constructor with a generic error message
  const CustomFormatException([this.message = 'An unexpected format error occurred. Please check your input.']);

  //create a format exception from a specific error message
  factory CustomFormatException.fromMessage(String message) {
    return CustomFormatException(message);
  }

  //get the corresponding error message
  String get formattedMessage => message;

  factory CustomFormatException.fromCode(String code) {
    switch (code) {
      case 'invalid-email-address':
        return const CustomFormatException('The email address format is invalid. Please enter a valid email.');
      case 'invalid-phone-number-format':
        return const CustomFormatException('The provided phone number format is invalid. Please enter a valid number.');
      case 'invalid-date-format':
        return const CustomFormatException('The date format is invalid. Please enter a valid date.');
      case 'invalid-url-format':
        return const CustomFormatException('The url format is invalid. Please enter a valid URL.');
      case 'invalid-credit-card-format':
        return const CustomFormatException('The credit card format is invalid. Please enter a valid credit card number.');
      case 'invalid-numeric-format':
        return const CustomFormatException('The input should be a valid numeric format.');
      default:
        return const CustomFormatException();
    }
  }
}