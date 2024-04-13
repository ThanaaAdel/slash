

import '../../../../../../../../core/networking/api_error_handler.dart';
import '../../../../../../../../core/networking/api_result.dart';
import '../../../../../../../../core/networking/api_service.dart';
import '../../model/updated_user_profile_model/updated_user_profile_request_model.dart';
import '../../model/updated_user_profile_model/updated_user_profile_response_model.dart';

class UpdatedUserProfileDataRepo {
  final ApiService _apiService;
  UpdatedUserProfileDataRepo(this._apiService);
  Future<ApiResult<UpdatedUserProfileModelResponse>> updatedUserprofileData({required String token,required UpdatedUserProfileRequestBody updatedUserProfileRequestBody}) async{
    try{
      final response = await _apiService.updatedUserProfileData(token, updatedUserProfileRequestBody);
      return ApiResult.success(response);
    }catch(error){
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}


