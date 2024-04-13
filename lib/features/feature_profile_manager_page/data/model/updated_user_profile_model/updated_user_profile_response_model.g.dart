// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'updated_user_profile_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdatedUserProfileModelResponse _$UpdatedUserProfileModelResponseFromJson(
        Map<String, dynamic> json) =>
    UpdatedUserProfileModelResponse(
      statusCode: json['statusCode'] as int?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UpdatedUserProfileModelResponseToJson(
        UpdatedUserProfileModelResponse instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      id: json['id'] as int?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      genderId: json['genderId'] as int?,
      birthDate: json['birth_date'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      password: json['password'] as String?,
      fcmToken: json['fcmToken'] as String?,
      deletedAt: json['deletedAt'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      userStatusId: json['user_status_id'] as int?,
      userProfileImage: json['user_profile_image'] as String?,
      isPhoneVerified: json['is_phone_verified'] as bool?,
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'genderId': instance.genderId,
      'birth_date': instance.birthDate,
      'email': instance.email,
      'phone': instance.phone,
      'password': instance.password,
      'fcmToken': instance.fcmToken,
      'deletedAt': instance.deletedAt,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'user_status_id': instance.userStatusId,
      'user_profile_image': instance.userProfileImage,
      'is_phone_verified': instance.isPhoneVerified,
    };
