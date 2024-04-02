

import '../../../../../../../core/networking/api_error_handler.dart';
import '../../../../../../../core/networking/api_result.dart';
import '../../../../../../../core/networking/api_service.dart';
import '../model/profile_model.dart';

class ProfileDataRepo {
  final ApiService _apiService;
  ProfileDataRepo(this._apiService);
  Future<ApiResult<ProfileModel>> profileData({required String token}) async{
    try{
      final response = await _apiService.profileData(token);
      return ApiResult.success(response);
    }catch(error){
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}


