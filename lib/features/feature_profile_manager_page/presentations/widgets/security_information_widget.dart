import 'package:ablexa/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/spacing.dart';
import '../../../../core/theming/styles.dart';
import '../../../../generated/l10n.dart';

class SecurityInformationWidget extends StatelessWidget {
  const SecurityInformationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.w, right: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            S.of(context).security_information,
            style: TextStyles.font20BoldWhite,
          ),
          verticalSpacing(10),
          Container(
            width: double.infinity,
            height: 74.r,
            decoration: BoxDecoration(
                color: ColorsManager.lightBlack,
                borderRadius: BorderRadius.circular(6.sp)),
            child:  Padding(
              padding:  EdgeInsets.all(8.0.sp),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(S.of(context).password,style: TextStyles.font14MediumWhite),
                  verticalSpacing(10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("****************",style: TextStyles.font14MediumGray),
                      Text(S.of(context).change_password,style: TextStyles.font16MainColor400.copyWith(decoration: TextDecoration.underline))
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }


}
