import 'package:ablexa/features/feature_profile_manager_page/logic/cubit/profile_cubit/profile_cubit.dart';
import 'package:ablexa/features/feature_profile_manager_page/logic/cubit/profile_cubit/profile_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/spacing.dart';
import '../../../../core/theming/styles.dart';
import '../../../../generated/l10n.dart';
import '../../data/model/profile_model.dart';
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
late  ProfileModel profileModel;
class _ProfileManagerPageState extends State<ProfileManagerPage> {
  late ProfileModel profileModel;
@override
@override
void initState() {
  super.initState();
  // Fetch data using Dio and update the state in ProfileCubit
  context.read<ProfileCubit>().emitProfileData(
    token: "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjMsInJvbGUiOiJ1c2VyIiwiaWF0IjoxNzEyMDY5MzExfQ.f1AuYs7R-jonBMz1zIedOe1gQ0tpsemu9WkhHmXz4Yg",
  );
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.mainBlack,
      appBar: AppBar(
        title: Text(S.of(context).my_profile,style: TextStyles.font30White700),
        elevation: 0,
        backgroundColor: ColorsManager.mainBlack,
        foregroundColor: ColorsManager.grey,
        actions: [TextButton(
          onPressed: (){},
          child: Text(   S.of(context).save,
            style: TextStyles.font24Gray400,),
        )],
      ),
      body: SingleChildScrollView(
        child:  BlocBuilder<ProfileCubit,ProfileStates>(
      builder: ( context, state) {
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
              return Column(
                children: [
                  ImageAndNameProfile(
                    email:  profileModel.data!.email.toString(),
                    firstName:  profileModel.data!.firstName.toString(),
                    lastName:  profileModel.data!.lastName.toString(),
                    phoneNumber:  profileModel.data!.phone.toString(),
                    imageLink: profileModel.data!.userProfileImage.toString(),
                  ),
                  verticalSpacing(20),
                  NameWidget(
                    lastName:  profileModel.data!.lastName.toString(),
                    firstName:  profileModel.data!.firstName.toString(),
                    middleName:  profileModel.data!.lastName.toString(),
                  ),
                  verticalSpacing(20),
                  EmailWidget(
                    email:  profileModel.data!.email.toString(),
                  ),
                  verticalSpacing(20),
                  PhoneWidget(
                    phoneNumber:  profileModel.data!.phone.toString(),
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

      )
      ),
    );
  }

  void setupErrorState(BuildContext context, String error) {
    // Your error handling code...
  }
}



