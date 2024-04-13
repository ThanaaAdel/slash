

import 'package:ablexa/features/feature_profile_manager_page/data/repositories/profile_repos/profile_repos.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'profile_states.dart';

class ProfileCubit extends Cubit<ProfileStates> {
  final ProfileDataRepo profileDataRepo;
  ProfileCubit(this.profileDataRepo) : super(const ProfileStates.initial());


  void emitProfileData({required String token}) async {
    emit(const ProfileStates.loading());
    final response = await profileDataRepo.profileData(token: token);
    response.when(success: (profileData) {
      emit(ProfileStates.success(profileData));
    }, failure: (error) {
      emit(ProfileStates.error(error: error.apiErrorModel.type ?? ''));
    });
  }
}
