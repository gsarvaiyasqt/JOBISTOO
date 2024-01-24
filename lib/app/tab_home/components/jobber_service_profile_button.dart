import 'package:flutter/material.dart';
import 'package:jobisto/base/common_components/custom/loading_view.dart';
import 'package:jobisto/utils/utils.dart';
class JobberServiceProfileButton extends StatelessWidget {
  final String? rejectText;
  final String? acceptText;
  final Widget? acceptIcon;
  final Widget? rejectIcon;
  final bool? acceptLoading;
  final bool? rejectLoading;
  const JobberServiceProfileButton({Key? key, this.rejectText, this.acceptText, this.acceptIcon, this.rejectIcon, this.acceptLoading, this.rejectLoading}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Container(
          padding: EdgeInsets.symmetric(vertical: 17.sp),
          decoration: BoxDecoration(
            color: kBlackColor,
            border: Border.all(
                color: kLightGrayColor,
                width: 1
            ),
            borderRadius: BorderRadius.circular(10.sp),
          ),
          child: rejectLoading == true?
          SizedBox(
              height: 24.sp,
              width: 24.sp,
              child: const Loading()):
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if(rejectIcon != null)
                SizedBox(
                  width: 20.sp,
                  height: 20.sp,
                  child: rejectIcon,
                ),
              SizedBox(width: 10.sp),
              Flexible(child: Text(rejectText ?? "",style: CustomTextStyle.secondaryTextColorFont16W600))
            ],

          ),
        )),
        SizedBox(width: 8.sp),
        Expanded(
            flex: 2,
            child: Container(
          padding: EdgeInsets.symmetric(vertical: 17.sp),
          decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.circular(10.sp),
          ),
          child: acceptLoading == true?
          SizedBox(
              height: 24.sp,
              width: 24.sp,
              child: const Loading()):
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if(acceptIcon != null)
                SizedBox(
                  width: 20.sp,
                  height: 20.sp,
                  child: acceptIcon,
                ),
              SizedBox(width: 10.sp),
              Flexible(child: Text(acceptText ?? "",style: CustomTextStyle.primaryTextColorFont16W600.copyWith(
                  color: kBlackColor
              )))
            ],

          ),
        )),
      ],
    );
  }
}
