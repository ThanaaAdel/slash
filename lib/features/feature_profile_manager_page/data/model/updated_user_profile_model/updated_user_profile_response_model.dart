
import 'package:json_annotation/json_annotation.dart';
part 'updated_user_profile_response_model.g.dart';
@JsonSerializable()
class UpdatedUserProfileModelResponse {
  int? statusCode;
  String? message;
  Data? data;

  UpdatedUserProfileModelResponse({this.statusCode, this.message, this.data});
  factory UpdatedUserProfileModelResponse.fromJson(Map<String, dynamic> json) => _$UpdatedUserProfileModelResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UpdatedUserProfileModelResponseToJson(this);
}
@JsonSerializable()

class Data {
  int? id;
  @JsonKey(name: "first_name")
  String? firstName;
  @JsonKey(name: "last_name")
  String? lastName;
  int? genderId;
  @JsonKey(name: "birth_date")
  String? birthDate;
  String? email;
  String? phone;
  String? password;
  String? fcmToken;
  String? deletedAt;
  String? createdAt;
  String? updatedAt;
  @JsonKey(name: "user_status_id")
  int? userStatusId;
  @JsonKey(name: "user_profile_image")
  String? userProfileImage;
  @JsonKey(name: "is_phone_verified")
  bool? isPhoneVerified;

  Data(
      {this.id,
        this.firstName,
        this.lastName,
        this.genderId,
        this.birthDate,
        this.email,
        this.phone,
        this.password,
        this.fcmToken,
        this.deletedAt,
        this.createdAt,
        this.updatedAt,
        this.userStatusId,
        this.userProfileImage,
        this.isPhoneVerified});
  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);

}