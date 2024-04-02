import 'package:ablexa/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/spacing.dart';
import '../../../../core/theming/styles.dart';
import '../../../../generated/l10n.dart';

class PhoneWidget extends StatelessWidget {
  const PhoneWidget({
    super.key, required this.phoneNumber,
  });
final String phoneNumber;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.w, right: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            S.of(context).phone_number,
            style: TextStyles.font20BoldWhite,
          ),
          verticalSpacing(10),
          Container(
            width: double.infinity,
            height: 32.r,
            decoration: BoxDecoration(
                color: ColorsManager.lightBlack,
                borderRadius: BorderRadius.circular(6.sp)),
            child:  Padding(
              padding:  EdgeInsets.all(8.0.sp),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(phoneNumber,style: TextStyles.font14MediumGray),
                  Text(S.of(context).verify,style: TextStyles.font14MediumGray.copyWith(decoration: TextDecoration.underline))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  
}
