// exceptions/custom_platform_exception.dart
class CustomPlatformException implements Exception {
  final String message;

  CustomPlatformException(this.message);
}