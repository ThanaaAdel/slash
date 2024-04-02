import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/image_manager.dart';
import '../../../../core/theming/spacing.dart';
import '../../../../core/theming/styles.dart';

class ImageAndNameProfile extends StatelessWidget {
  const ImageAndNameProfile({super.key, required this.imageLink, required this.firstName, required this.lastName, required this.email, required this.phoneNumber});
  final String imageLink;
  final String firstName;
  final String lastName;
  final String email;
  final String phoneNumber;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        verticalSpacing(10),
        imageProfile(),
        verticalSpacing(10),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              firstName,
              style: TextStyles.font24White600,
            ),
            horizontalSpacing(5),
            Text(
              lastName,
              style: TextStyles.font24White600,
            ),
          ],
        ),
        verticalSpacing(5),
        Text(
          email,
          style: TextStyles.font14White400.copyWith(
            decoration: TextDecoration.underline,
          ),
        ),
        verticalSpacing(5),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
             phoneNumber,
              style: TextStyles.font14White400,
            ),
            horizontalSpacing(5),
            Image.asset(ImageManager.phoneVerifiedAccount),
          ],
        ),
      ],
    );
  }

  CircleAvatar imageProfile() {
    return CircleAvatar(
      radius: 50.sp,
      child: Image.asset(ImageManager.profileImage),
    );
  }
}
