import 'package:freezed_annotation/freezed_annotation.dart';
part 'profile_states.freezed.dart';
@freezed
abstract class ProfileStates<T> with _$ProfileStates<T> {
  const factory ProfileStates.initial() = _Initial;
  const factory ProfileStates.loading() = Loading;
  const factory ProfileStates.success(T data) = Success<T>;
  const factory ProfileStates.error({required String error}) = Error;

}
