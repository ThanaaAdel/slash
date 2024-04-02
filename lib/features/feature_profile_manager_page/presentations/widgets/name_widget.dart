import 'package:ablexa/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/spacing.dart';
import '../../../../core/theming/styles.dart';
import '../../../../generated/l10n.dart';

class NameWidget extends StatelessWidget {
  const NameWidget({
    super.key, required this.firstName, required this.middleName, required this.lastName,
  });
final String firstName, middleName,lastName;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.w, right: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            S.of(context).name,
            style: TextStyles.font20BoldWhite,
          ),
          verticalSpacing(10),
          Container(
            width: double.infinity,
            height: 120.r,
            decoration: BoxDecoration(
                color: ColorsManager.lightBlack,
                borderRadius: BorderRadius.circular(6.sp)),
            child: Padding(
              padding:  EdgeInsets.only(left: 20.r,right: 20.r,bottom: 15.r,top: 15.r),
              child: Column(children: [
                nameRowWidget(
                  key: S.of(context).first,
                  value: firstName
                ),
                Divider(color: ColorsManager.grey,thickness: 1.sp),
                nameRowWidget(
                    key: S.of(context).middle,
                    value: middleName
                ),
                Divider(color: ColorsManager.grey,thickness: 1.sp),
                nameRowWidget(
                    key: S.of(context).last,
                    value: lastName
                ),

              ]),
            ),
          )
        ],
      ),
    );
  }

  Row nameRowWidget({required String key , required value }) {
    return Row(children: [
                Text(key,style: TextStyles.font16White600.copyWith(fontSize: 14.sp)),
                horizontalSpacing(50),
                Text(value,style:TextStyles.font16White600.copyWith(fontSize: 14.sp)),
              ],);
  }
}
