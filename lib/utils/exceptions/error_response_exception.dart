class ErrorResponseException implements Exception {
  const ErrorResponseException({required String message, required this.code});

  final int code;

  @override
  String toString() {
    return 'ErrorResponseException: code=$code';
  }
}
