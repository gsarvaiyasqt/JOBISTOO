import 'package:flutter/material.dart';
import 'package:jobisto/base/common_components/custom/custom_background.dart';
import 'package:jobisto/utils/utils.dart';

class BecomeAJobberScreen extends StatefulWidget {
  const BecomeAJobberScreen({super.key});

  @override
  State<BecomeAJobberScreen> createState() => _BecomeAJobberScreenState();
}

class _BecomeAJobberScreenState extends State<BecomeAJobberScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
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
        title: Text("Become a Jobber",style: CustomTextStyle.semiBoldFont20Style,),
      ),
      body: CustomBackGround(
        childBody: Column(
          children: [],
        ),
      ),
    );
  }
}
