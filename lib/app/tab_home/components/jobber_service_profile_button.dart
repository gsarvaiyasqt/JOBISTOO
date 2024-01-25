import 'package:flutter/material.dart';
import 'package:jobisto/app/tab_home/route/home_route.dart';
import 'package:jobisto/base/common_components/custom/loading_view.dart';
import 'package:jobisto/utils/utils.dart';
class JobberServiceProfileButton extends StatefulWidget {
  final String? rejectText;
  final String? acceptText;
  final Widget? acceptIcon;
  final Widget? rejectIcon;
  final bool? acceptLoading;
  final bool? rejectLoading;
  final void Function()? onTapForSecondButton;
  final void Function()? onTapForFirstButton;

  const JobberServiceProfileButton({Key? key, this.rejectText, this.acceptText, this.acceptIcon, this.rejectIcon, this.acceptLoading, this.rejectLoading, this.onTapForSecondButton, this.onTapForFirstButton}) : super(key: key);

  @override
  State<JobberServiceProfileButton> createState() => _JobberServiceProfileButtonState();
}

class _JobberServiceProfileButtonState extends State<JobberServiceProfileButton> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: GestureDetector(
          onTap: widget.onTapForFirstButton,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 17.sp),
            decoration: BoxDecoration(
              color: kBlackColor,
              border: Border.all(
                  color: kLightGrayColor,
                  width: 1
              ),
              borderRadius: BorderRadius.circular(10.sp),
            ),
            child: widget.rejectLoading == true?
            SizedBox(
                height: 24.sp,
                width: 24.sp,
                child: const Loading()):
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if(widget.rejectIcon != null)
                  SizedBox(
                    width: 20.sp,
                    height: 20.sp,
                    child: widget.rejectIcon,
                  ),
                SizedBox(width: 10.sp),
                Flexible(child: Text(widget.rejectText ?? "",style: CustomTextStyle.secondaryTextColorFont16W600))
              ],

            ),
          ),
        )),
        SizedBox(width: 8.sp),
        Expanded(
            flex: 2,
            child: GestureDetector(
              onTap: widget.onTapForSecondButton,
              child: Container(
                        padding: EdgeInsets.symmetric(vertical: 17.sp),
                        decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.circular(10.sp),
                        ),
                        child: widget.acceptLoading == true?
                        SizedBox(
                height: 24.sp,
                width: 24.sp,
                child: const Loading()):
                        Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if(widget.acceptIcon != null)
                  SizedBox(
                    width: 20.sp,
                    height: 20.sp,
                    child: widget.acceptIcon,
                  ),
                SizedBox(width: 10.sp),
                Flexible(child: Text(widget.acceptText ?? "",style: CustomTextStyle.primaryTextColorFont16W600.copyWith(
                    color: kBlackColor
                )))
              ],

                        ),
                      ),
            )),
      ],
    );
  }
}
