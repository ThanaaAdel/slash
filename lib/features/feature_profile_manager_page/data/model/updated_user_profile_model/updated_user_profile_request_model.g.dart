// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'updated_user_profile_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdatedUserProfileRequestBody _$UpdatedUserProfileRequestBodyFromJson(
        Map<String, dynamic> json) =>
    UpdatedUserProfileRequestBody(
      json['first_name'] as String?,
      json['last_name'] as String?,
      json['user_profile_image'] as String?,
    );

Map<String, dynamic> _$UpdatedUserProfileRequestBodyToJson(
        UpdatedUserProfileRequestBody instance) =>
    <String, dynamic>{
      'user_profile_image': instance.userProfileImage,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
    };
