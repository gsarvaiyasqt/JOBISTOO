import 'package:flutter/material.dart';
import 'package:jobisto/utils/utils.dart';
class ProfileCommonComponent extends StatelessWidget {
  final Widget? icon;
  final String? profileName;
  final String? rating;
  const ProfileCommonComponent({Key? key, this.icon, this.profileName, this.rating}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if(icon != null)
        SizedBox(
            height: 64.sp,
            width: 64.sp,
            child: icon),
        SizedBox(width: 20.sp),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(profileName ?? "",style: CustomTextStyle.primaryTextColorFont18W400),
              SizedBox(height: 8.sp),
              if(rating != null)
              Container(
                  padding: EdgeInsets.symmetric(vertical: 6.sp,horizontal: 10.sp),
                  decoration: ContainerDecoration.secondaryDecoration,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(rating ?? "",style: CustomTextStyle.secondaryTextColorFont12W400,),
                      SizedBox(width: 6.sp),
                      SizedBox(
                          width: 14.sp,height: 14.sp,
                          child: ImageUtil.iconImageClass.starIcon)
                    ],
                  )
              )
            ],
          ),
        )
      ],
    );
  }
}
