import 'package:manavo/services/listened/listened.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'listened_state.freezed.dart';

@freezed
class ListenedState with _$ListenedState {
  const ListenedState._();
  const factory ListenedState.create({required DateTime updatedAt}) =
      _ListenedState;

  Future<Listened> listened() async => await Listened.getInstance();
}
