import 'package:freezed_annotation/freezed_annotation.dart';
part 'updated_user_profile_states.freezed.dart';
@freezed
abstract class UpdatedUserProfileStates<T> with _$UpdatedUserProfileStates<T> {
  const factory UpdatedUserProfileStates.initial() = _Initial;
  const factory UpdatedUserProfileStates.loading() = Loading;
  const factory UpdatedUserProfileStates.success(T data) = Success<T>;
  const factory UpdatedUserProfileStates.error({required String error}) = Error;

}
