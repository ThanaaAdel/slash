
import 'package:ablexa/features/feature_profile_manager_page/logic/cubit/updated_user_profile_cubit/updated_user_profile_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/model/updated_user_profile_model/updated_user_profile_request_model.dart';
import '../../../data/repositories/updated_profile_preos/profile_repos.dart';
class UpdatedUserProfileCubit extends Cubit<UpdatedUserProfileStates> {
  final UpdatedUserProfileDataRepo updatedUserProfileDataRepo;
  UpdatedUserProfileCubit(this.updatedUserProfileDataRepo) : super(const UpdatedUserProfileStates.initial());


  void emitUpdatedUserProfileData({required String token, required String firstName ,required String lastName ,required String userProfileImage}) async {
    emit(const UpdatedUserProfileStates.loading());
    final response = await updatedUserProfileDataRepo.updatedUserprofileData(updatedUserProfileRequestBody: UpdatedUserProfileRequestBody(
        firstName,
        lastName,
        userProfileImage), token: token );
    response.when(success: (updatedProfileData) {
      emit(UpdatedUserProfileStates.success(updatedProfileData));
    }, failure: (error) {
      emit(UpdatedUserProfileStates.error(error: error.apiErrorModel.type ?? ''));
    });
  }
}
