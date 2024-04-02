import 'package:ablexa/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/spacing.dart';
import '../../../../core/theming/styles.dart';
import '../../../../generated/l10n.dart';

class EmailWidget extends StatelessWidget {
  const EmailWidget({
    super.key, required this.email,
  });
final String email;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.w, right: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            S.of(context).email,
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
              child: Text(email,style: TextStyles.font14MediumGray),
            ),
          )
        ],
      ),
    );
  }

}
