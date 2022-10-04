import 'package:freezed_annotation/freezed_annotation.dart';

part 'listened_state.freezed.dart';

@freezed
class ListenedState with _$ListenedState {
  const ListenedState._();
  const factory ListenedState.create({required DateTime updatedAt}) =
      _ListenedState;
}
