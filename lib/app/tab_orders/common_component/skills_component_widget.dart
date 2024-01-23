import 'package:flutter/material.dart';

import '../../../utils/utils.dart';
import '../domain/dummy_models/skilles_model.dart';
class SkillsComponentWidget extends StatelessWidget {
  final SkillsModel? skills;
  const SkillsComponentWidget({Key? key, this.skills}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18.sp,vertical: 6.sp),
      decoration: ContainerDecoration.secondaryDecoration,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(skills?.skill ?? "",style: CustomTextStyle.primaryTextColorFont14W400),
          if(skills?.rating != null)
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(skills?.rating ?? "",style: CustomTextStyle.secondaryTextColorFont12W400,),
              SizedBox(width: 6.sp),
              SizedBox(
                  width: 14.sp,height: 14.sp,
                  child: ImageUtil.iconImageClass.starIcon)
            ],
          )
        ],
      ),
    );
  }
}
