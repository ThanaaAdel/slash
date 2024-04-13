import 'package:dio/dio.dart' hide Headers;
import '../../features/feature_profile_manager_page/data/model/profile_model/profile_model.dart';
import '../../features/feature_profile_manager_page/data/model/updated_user_profile_model/updated_user_profile_request_model.dart';
import '../../features/feature_profile_manager_page/data/model/updated_user_profile_model/updated_user_profile_response_model.dart';
import 'api_constant.dart';
import 'package:retrofit/retrofit.dart';
part 'api_service.g.dart';
@RestApi(baseUrl: ApiConstant.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;
// profile page
  @GET(ApiConstant.profilePage)
  @FormUrlEncoded()
  Future<ProfileModel> profileData(
      @Header("Authorization") String token,
      );
// updated user profile page
  @PATCH(ApiConstant.profilePage)
  @FormUrlEncoded()
  Future<UpdatedUserProfileModelResponse> updatedUserProfileData(
      @Header("Authorization") String token,
      @Body() UpdatedUserProfileRequestBody updatedUserProfileRequestBody,
      );
}


