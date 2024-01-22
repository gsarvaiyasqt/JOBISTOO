import 'package:flutter/material.dart';
import 'package:jobisto/base/base.dart';
import 'package:jobisto/base/common_components/custom/custom_background.dart';
import 'package:jobisto/base/common_components/custom/custom_button.dart';
import 'package:jobisto/utils/utils.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {

  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  bool password = true;
  bool confirmPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title:  InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            width: 56.sp,
            padding: EdgeInsets.symmetric(horizontal: 16.sp,vertical: 8.sp),
            decoration: BoxDecoration(
                border: Border.all(
                    color: kLightGrayColor
                ),
                borderRadius: BorderRadius.circular(50.sp)
            ),
            child: Center(
              child: SizedBox(
                  height: 24.sp,
                  width: 24.sp,
                  child: ImageUtil.iconImageClass.backArrowIcon),
            ),
          ),
        ),
      ),

      body: CustomBackGround(
        childBody: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.sp),
            child: Column(
              children: [
                Expanded(child: SingleChildScrollView(
                  child: Column(
                    children: [
                  
                      SizedBox(height: 30.sp,),
                  
                      Center(
                        child: SizedBox(
                            height: 137.sp, width: 220.sp, child: ImageUtil.logo.appLogo),
                      ),
                  
                  
                      SizedBox(height: 50.sp,),
                  
                      CustomTextField(
                        isSecure: password ? true : false,
                        suffix: InkWell(
                          onTap: () {
                            setState(() {
                              password = !password;
                            });
                          },
                          child: SizedBox(
                            height: 24.sp,
                            width: 24.sp,
                            child: password ? ImageUtil.iconImageClass.closeEyeIcon : ImageUtil.iconImageClass.openEyeIcon,
                          ),
                        ),
                        inputType: TextInputType.visiblePassword,
                        textInputAction: TextInputAction.next,
                        controller: passwordController,
                        hint: "Enter Password",
                        isOptional: false,
                      ),
                  
                      SizedBox(height: 10.sp,),
                  
                      CustomTextField(
                        isSecure: confirmPassword ? true : false,
                        suffix: InkWell(
                          onTap: () {
                            setState(() {
                              confirmPassword = !confirmPassword;
                            });
                          },
                          child: SizedBox(
                            height: 24.sp,
                            width: 24.sp,
                            child: confirmPassword ? ImageUtil.iconImageClass.closeEyeIcon : ImageUtil.iconImageClass.openEyeIcon,
                          ),
                        ),
                        inputType: TextInputType.visiblePassword,
                        textInputAction: TextInputAction.done,
                        controller: confirmPasswordController,
                        hint: "Enter Password",
                        isOptional: false,
                      ),
                    ],
                  ),
                )),


                CustomButton(
                  btnText: "SUBMIT",
                  textStyle: CustomTextStyle.blackSemiBoldFont16Style,
                ),

                SizedBox(height: 25.sp,)






              ],
            ),
          ),
        ),
      ),
    );
  }
}
