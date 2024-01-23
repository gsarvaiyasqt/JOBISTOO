import 'package:flutter/material.dart';
import 'package:jobisto/utils/utils.dart';

class CustomAppbarPrefixIcon extends StatefulWidget {
  const CustomAppbarPrefixIcon({super.key});

  @override
  State<CustomAppbarPrefixIcon> createState() => _CustomAppbarPrefixIconState();
}

class _CustomAppbarPrefixIconState extends State<CustomAppbarPrefixIcon> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 10.sp),
      child: Row(
        children: [
          SizedBox(width: 20.sp,),
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              height: 40.sp,
              width: 56.sp,
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
        ],
      ),
    );
  }
}
