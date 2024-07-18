// exceptions/custom_firebase_auth_exception.dart
class CustomFirebaseAuthException implements Exception {
  final String message;

  CustomFirebaseAuthException(this.message);
}