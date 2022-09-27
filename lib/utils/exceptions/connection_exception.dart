import 'package:freezed_annotation/freezed_annotation.dart';

part 'connection_exception.freezed.dart';

@freezed
class ConnectionException with _$ConnectionException implements Exception {
  const factory ConnectionException.noNetwork() = NoNetworkException;

  const factory ConnectionException.timeout() = TimeoutException;

  @override
  String toString() {
    return 'ConnectionException';
  }
}
