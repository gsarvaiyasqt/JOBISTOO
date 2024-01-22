import 'package:flutter/material.dart';
import 'package:jobisto/app/tab/route/tab_route.dart';
import 'package:jobisto/base/base.dart';
import 'package:jobisto/utils/utils.dart';
import 'package:jobisto/app/auth/route/auth_route.dart';
import 'package:jobisto/base/common_components/custom/custom_background.dart';
import 'package:jobisto/base/common_components/custom/custom_button.dart';
import 'package:jobisto/app/auth/components/custom_socialmedia_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController mobileController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  FocusNode mobile = FocusNode();
  FocusNode password = FocusNode();

  bool togglePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomBackGround(
      childBody: SafeArea(
          bottom: false,

          child: SingleChildScrollView(
            child: Column(children: [
            
              SizedBox(height: MediaQuery.of(context).padding.top + 72.sp),
            
              Center(
                child: SizedBox(
                    height: 137.sp, width: 220.sp, child: ImageUtil.logo.appLogo),
              ),
            
              SizedBox(height: MediaQuery.of(context).padding.bottom + 64.sp),
            
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.sp),
            
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
            
                    Text(
                      "Sign in",
                      style: CustomTextStyle.semiBoldFont22Style,
                    ),
            
                    SizedBox(height: 25.sp,),
            
                    CustomTextField(
                      name: "Mobile Number",
                      textInputAction: TextInputAction.next,
                      inputType: TextInputType.number,
                      controller: mobileController,
                      hint: "Enter your Mobile Number",
                    /*  focusNode: mobile,
                      onEditingComplete:() {
                        password.requestFocus();
                      },*/
                      isOptional: false,
                    ),
            
                    SizedBox(height: 10.sp,),
            
                    CustomTextField(
                      name: "Password",
                      controller: passwordController,
                      textInputAction: TextInputAction.done,
                    /*  focusNode: password,*/
                      hint: "Enter Password",
                      isOptional: false,
                      isSecure: togglePassword ? true : false,
                      suffix: InkWell(
                        onTap: () {
                          setState(() {
                            togglePassword = !togglePassword;
                          });
                        },
                        child: SizedBox(
                          height: 24.sp,
                          width: 24.sp,
                          child: togglePassword ? ImageUtil.iconImageClass.closeEyeIcon : ImageUtil.iconImageClass.openEyeIcon,
                        ),
                      ),
                     /* onEditingComplete: () {
                        password.unfocus();
                      },*/
                    ),
            
                    SizedBox(height: 30.sp,),
            
                    CustomButton(
                      onTap: () {
                        TabRoute.goToTabPage(context);
                      },
                      btnText: "Sign in",
                      textStyle: CustomTextStyle.blackSemiBoldFont16Style,
                    ),
                    
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 24.sp),
                      child: Center(child: InkWell(
                          onTap: () {
                            AuthRoute.goToForgotPasswordPage(context);
                          },
                          child: Text("Forgot your Password?",style: CustomTextStyle.lightFont14Style,))),
                    ),
            
                    SizedBox(height: 16.sp,),
            
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 34.sp),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 1.sp,
                              width: 10.sp,
                              color: kLightGrayColor,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.sp),
                            child: Text("Or sign in with",style: CustomTextStyle.regularFont12Style,),
                          ),
                          Expanded(
                            child: Container(
                              height: 1.sp,
                              width: 10.sp,
                              color: kLightGrayColor,
                            ),
                          ),
                        ],
                      ),
                    ),
            
                    SizedBox(height: 40.sp,),
            
                    Row(
                      children: [
            
                        Expanded(
                          child: CustomSocialMediaButton(
                            onTap: (){
                              print("hello");
                            },
                            btnIcon: ImageUtil.iconImageClass.googleIcon,
                            btnText: "Google",
                          ),
                        ),
            
                        SizedBox(width: 8.sp,),
            
                        Expanded(
                          child: CustomSocialMediaButton(
                            btnIcon: ImageUtil.iconImageClass.facebookIcon,
                            btnText: "Facebook",
                          ),
                        ),
            
                      ],
                    ),
            
                    SizedBox(height: 8.sp,),
            
                    CustomSocialMediaButton(
                      btnIcon: ImageUtil.iconImageClass.appleIcon,
                      btnText: "Sign in with Apple",
                    ),
            
                    SizedBox(height: 55.sp,),
            
                    InkWell(
                      onTap: () {
                        AuthRoute.goToRegistrationPage(context);
                      },
                      child: Center(
                        child: Text.rich(
                          TextSpan(
                            text: "Don’t have JOBISTO? ",
                            style: CustomTextStyle.regularFont14Style,
                            children: [
                              TextSpan(
                                text: "Get JOBISTO",
                                style: CustomTextStyle.boldFont14Style
                              )
                            ]
                          )
                        ),
                      ),
                    ),
            
                    SizedBox(height: 30.sp,)
            
                  ],
                ),
              )
            ]),
          ),
        )

    ));
  }
}
