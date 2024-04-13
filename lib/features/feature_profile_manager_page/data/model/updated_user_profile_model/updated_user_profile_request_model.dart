import 'package:json_annotation/json_annotation.dart';
part 'updated_user_profile_request_model.g.dart';
@JsonSerializable()
class UpdatedUserProfileRequestBody {
  @JsonKey(name: "user_profile_image")
  String? userProfileImage;
  @JsonKey(name: "first_name")
  String? firstName;
  @JsonKey(name: "last_name")
  String? lastName;
  UpdatedUserProfileRequestBody( this.firstName, this.lastName, this.userProfileImage);
  Map<String, dynamic> toJson() => _$UpdatedUserProfileRequestBodyToJson(this);

}
