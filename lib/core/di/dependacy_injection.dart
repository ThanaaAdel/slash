import 'package:ablexa/features/feature_profile_manager_page/data/repositories/profile_repos/profile_repos.dart';
import 'package:ablexa/features/feature_profile_manager_page/data/repositories/updated_profile_preos/profile_repos.dart';
import 'package:ablexa/features/feature_profile_manager_page/logic/cubit/profile_cubit/profile_cubit.dart';
import 'package:ablexa/features/feature_profile_manager_page/logic/cubit/updated_user_profile_cubit/updated_user_profile_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import '../networking/api_service.dart';
import '../networking/dio_factory.dart';
final getIt = GetIt.instance;
 Future<void> setupGetIt () async{
//Dio & apiServices
  Dio dio =  await DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  //profile Page
  getIt.registerLazySingleton<ProfileDataRepo>(() => ProfileDataRepo(getIt()));
  getIt.registerFactory<ProfileCubit>(() => ProfileCubit(getIt()));
  //updated profile Page
  getIt.registerLazySingleton<UpdatedUserProfileDataRepo>(() => UpdatedUserProfileDataRepo(getIt()));
  getIt.registerFactory<UpdatedUserProfileCubit>(() => UpdatedUserProfileCubit(getIt()));
 }