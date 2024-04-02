import 'package:dio/dio.dart' hide Headers;
import '../../features/feature_profile_manager_page/data/model/profile_model.dart';
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

}


