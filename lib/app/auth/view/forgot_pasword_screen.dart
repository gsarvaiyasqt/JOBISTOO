import 'package:flutter/material.dart';
import 'package:jobisto/app/auth/route/auth_route.dart';
import 'package:jobisto/base/base.dart';
import 'package:jobisto/base/common_components/custom/custom_background.dart';
import 'package:jobisto/base/common_components/custom/custom_button.dart';
import 'package:jobisto/utils/utils.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {

  TextEditingController mobileController = TextEditingController();

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
                Expanded(child: Column(
                  children: [

                    SizedBox(height: 30.sp,),

                    Center(
                      child: SizedBox(
                          height: 137.sp, width: 220.sp, child: ImageUtil.logo.appLogo),
                    ),


                    SizedBox(height: 50.sp,),

                    CustomTextField(
                      inputType: TextInputType.number,
                      textInputAction: TextInputAction.next,
                      controller: mobileController,
                      hint: "Enter your Mobile Number",
                      isOptional: false,
                    ),
                  ],
                )),


                CustomButton(
                  onTap: () {
                    AuthRoute.goToChangePasswordPage(context);
                  },
                  btnText: "GET OTP",
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
