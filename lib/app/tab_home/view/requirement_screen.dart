import 'package:flutter/material.dart';
import 'package:jobisto/base/common_components/custom/custom_appbar.dart';
import 'package:jobisto/base/common_components/custom/custom_appbar_prefix_icon.dart';
import 'package:jobisto/base/common_components/custom/custom_background.dart';
import 'package:jobisto/utils/utils.dart';

import '../../../base/base.dart';

class RequirementScreen extends StatefulWidget {
  const RequirementScreen({super.key});

  @override
  State<RequirementScreen> createState() => _RequirementScreenState();
}

class _RequirementScreenState extends State<RequirementScreen> {

  TextEditingController locationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        leadingWidth: 76.sp,
        leading: const CustomAppbarPrefixIcon(),
        title: Text("My Requirements",style: CustomTextStyle.semiBoldFont20Style),
      ),
      body: CustomBackGround(
        childBody: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.sp),
            child: Column(
              children: [

                Row(
                  children: [
                    Text("JOB Location",style: CustomTextStyle.regularFont16Style,),
                    Text("*",style: CustomTextStyle.regularFont16Style.copyWith(color: Colors.red),),
                  ],
                ),

                SizedBox(height: 10.sp),

                CustomTextField(
                  suffix: SizedBox(
                    height: 24.sp,
                    width: 24.sp,
                    child: ImageUtil.iconImageClass.locationIcon,
                  ),
                  name: "JOB Location",
                  textInputAction: TextInputAction.next,
                  inputType: TextInputType.name,
                  controller: locationController,
                  hint: "Nairobi, Kenya",
                  /*  focusNode: mobile,
                                                  onEditingComplete:() {
                                                    password.requestFocus();
                                                  },*/
                  isOptional: true,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
