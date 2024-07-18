// exceptions/custom_firebase_exception.dart
class CustomFirebaseException implements Exception {
  final String message;

  CustomFirebaseException(this.message);
}