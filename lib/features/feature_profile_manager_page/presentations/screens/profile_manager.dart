import 'package:ablexa/features/feature_profile_manager_page/logic/cubit/profile_cubit/profile_cubit.dart';
import 'package:ablexa/features/feature_profile_manager_page/logic/cubit/profile_cubit/profile_states.dart';
import 'package:ablexa/features/feature_profile_manager_page/logic/cubit/updated_user_profile_cubit/updated_user_profile_cubit.dart';
import 'package:ablexa/features/feature_profile_manager_page/logic/cubit/updated_user_profile_cubit/updated_user_profile_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/spacing.dart';
import '../../../../core/theming/styles.dart';
import '../../../../generated/l10n.dart';
import '../../data/model/profile_model/profile_model.dart';
import '../widgets/email_widget.dart';
import '../widgets/image_and_name_profile.dart';
import '../widgets/name_widget.dart';
import '../widgets/phone_widget.dart';
import '../widgets/security_information_widget.dart';

class ProfileManagerPage extends StatefulWidget {
  const ProfileManagerPage({Key? key});

  @override
  State<ProfileManagerPage> createState() => _ProfileManagerPageState();
}

late ProfileModel profileModel;

class _ProfileManagerPageState extends State<ProfileManagerPage> {
  late ProfileModel profileModel;
  late TextEditingController _firstNameController;
  late TextEditingController _lastNameController;
  late String _imageLink = ""; // Initialize with empty string
  @override
  @override
  void initState() {
    super.initState();

    _firstNameController = TextEditingController();
    _lastNameController = TextEditingController();
    context.read<ProfileCubit>().emitProfileData(
          token:
              "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjMsInJvbGUiOiJ1c2VyIiwiaWF0IjoxNzEyMDY5MzExfQ.f1AuYs7R-jonBMz1zIedOe1gQ0tpsemu9WkhHmXz4Yg",
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.mainBlack,
      appBar: AppBar(
        title: Text(S.of(context).my_profile, style: TextStyles.font30White700),
        elevation: 0,
        backgroundColor: ColorsManager.mainBlack,
        foregroundColor: ColorsManager.grey,
        actions: [
          TextButton(
            onPressed: () {
              // Print the values for debugging
              print('First Name: ${_firstNameController.text}');
              print('Last Name: ${_lastNameController.text}');

              // Call the UpdatedUserProfileCubit to update user profile
              context
                  .read<UpdatedUserProfileCubit>()
                  .emitUpdatedUserProfileData(
                firstName: _firstNameController.text,
                lastName: _lastNameController.text,
                userProfileImage: _imageLink,
                token:
                "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjMsInJvbGUiOiJ1c2VyIiwiaWF0IjoxNzEyMDY5MzExfQ.f1AuYs7R-jonBMz1zIedOe1gQ0tpsemu9WkhHmXz4Yg",
              );
            },
            child: Text(
              S.of(context).save,
              style: TextStyles.font24Gray400,
            ),
          ),
        ],
      ),
      body:
          SingleChildScrollView(child: BlocBuilder<ProfileCubit, ProfileStates>(
        builder: (context, state) {
          return state.when(
            initial: () {
              return const Center(
                  child: CircularProgressIndicator(
                      color: ColorsManager.mainColor));
            },
            loading: () {
              return const Center(
                  child: CircularProgressIndicator(
                      color: ColorsManager.mainColor));
            },
            success: (data) {
              final ProfileModel profileModel = data;
              _firstNameController.text = profileModel.data!.firstName.toString();
              _lastNameController.text = profileModel.data!.lastName.toString();
              return Column(
                children: [
                  ImageAndNameProfile(
                    onImageChanged: (newImageLink) {
                      setState(() {
                        _imageLink =
                            newImageLink; // Update the image link in the parent widget
                      });
                    },
                    imageLink: profileModel.data!.userProfileImage.toString(),
                    email: profileModel.data!.email.toString(),
                    firstName: profileModel.data!.firstName.toString(),
                    lastName: profileModel.data!.lastName.toString(),
                    phoneNumber: profileModel.data!.phone.toString(),
                  ),
                  verticalSpacing(20),
                  NameWidget(

    onSaveChanges: (updatedFirstName, updatedLastName) {
              // Update the state of the parent widget with the new values
      _firstNameController.text = updatedFirstName;
      _lastNameController.text = updatedLastName;
              setState(() {
              profileModel.data!.firstName = updatedFirstName;
              profileModel.data!.lastName = updatedLastName;
              });

              },
                    lastName: profileModel.data!.lastName.toString(),
                    firstName: profileModel.data!.firstName.toString(),
                  ),
                  verticalSpacing(20),
                  EmailWidget(
                    email: profileModel.data!.email.toString(),
                  ),
                  verticalSpacing(20),
                  PhoneWidget(
                    phoneNumber: profileModel.data!.phone.toString(),
                  ),
                  verticalSpacing(20),
                  const SecurityInformationWidget()
                ],
              );
            },
            error: (error) {
              return Center(child: Text(error));
            },
          );
        },
      )),
    );
  }

  void setupErrorState(BuildContext context, String error) {
    // Your error handling code...
  }
}
