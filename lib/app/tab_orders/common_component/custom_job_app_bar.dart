import 'package:flutter/material.dart';
import 'package:jobisto/utils/utils.dart';

import '../../../base/common_components/custom/custom_background.dart';
class CustomJabAppbar extends StatelessWidget implements PreferredSizeWidget{
  final double? height;
  final Widget? actionIcon;
  final Widget? image;
  const CustomJabAppbar({Key? key, this.height, this.actionIcon,this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
     decoration: BoxDecoration(
       color: kPrimaryColor,
       borderRadius: BorderRadius.all(Radius.circular(25))
     ),
      child: Stack(
        fit: StackFit.expand,
        children: [

          Padding(
            padding: EdgeInsets.only(top: 20.sp,left: 20.sp,right: 20.sp),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.sp,vertical: 8.sp),
                    decoration: BoxDecoration(
                    color: kBlackColor,
                    borderRadius: BorderRadius.circular(50.sp),
                    border: Border.all(
                      color: kLightGrayColor,
                      width: 1,
                      style: BorderStyle.solid
                    )
                  ),
                  child: ImageUtil.iconImageClass.backArrowIcon,
                                ),
                ),
                if(actionIcon != null)
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.sp,vertical: 8.sp),
                  decoration: BoxDecoration(
                      color: kBlackColor,
                      borderRadius: BorderRadius.circular(50.sp),
                      border: Border.all(
                          color: kLightGrayColor,
                          width: 1,
                          style: BorderStyle.solid
                      )
                  ),
                  child: actionIcon,
                )
              ],
            ),
          ),

          Center(
            child: SizedBox(
                height: 144.sp,
                width: 144.sp,
                child: image),
          )
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(height ?? 0);
}
