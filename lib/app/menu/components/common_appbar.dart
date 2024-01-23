

import 'package:flutter/material.dart';

import '../../../utils/utils.dart';

class CommonAppBar extends StatefulWidget {
  final GestureTapCallback? onTap;
  final String? centerText;
  final Widget? child;
   CommonAppBar({super.key, this.onTap, this.centerText, this.child});

  @override
  State<CommonAppBar> createState() => _CommonAppBarState();
}

class _CommonAppBarState extends State<CommonAppBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top + 10.sp),
      child: Row(
        children: [
          Padding(
            padding:  EdgeInsets.all(8.0),
            child: InkWell(
              borderRadius: BorderRadius.circular(50.sp),
              onTap: widget.onTap,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                      color: kLightGrayColor
                  ),
                  borderRadius: BorderRadius.circular(50.sp),
                ),
                padding: EdgeInsets.symmetric(horizontal: 16.sp,vertical: 8.sp),
                child: Center(
                  child: SizedBox(
                      height: 24.sp,
                      width: 24.sp,
                      child: ImageUtil.iconImageClass.backArrowIcon),
                ),
              ),
            ),
          ),

          Expanded(
              child: Align(
                  alignment: Alignment.center,
                  child: Text(widget.centerText ?? "-",style: CustomTextStyle.semiBoldFont20Style,))
          ),

          widget.child ?? Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 34.sp,
              width: 34.sp,
            ),
          )

        ],
      ),
    );
  }
}
