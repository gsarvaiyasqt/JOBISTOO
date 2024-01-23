import 'package:flutter/material.dart';
import 'package:jobisto/base/base.dart';
import 'package:jobisto/base/common_components/custom/custom_background.dart';
import 'package:jobisto/base/common_components/custom/custom_button.dart';
import 'package:jobisto/base/common_components/custom/custom_checkbox.dart';
import 'package:jobisto/base/common_components/custom/otp_bottom_sheet.dart';
import 'package:jobisto/utils/utils.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  FocusNode nameFocusNode = FocusNode();
  FocusNode emailFocusNode = FocusNode();
  FocusNode mobileFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();
  FocusNode confirmPasswordFocusNode = FocusNode();

  bool password = true;
  bool confirmPassword = true;
  bool isCheckBoxSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: InkWell(
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
        childBody:

          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                
                children: [
                  SizedBox(height: 30.sp,),
              
                  Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
              
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 120.sp,
                          width: 120.sp,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: Container(
                            margin: EdgeInsets.all(2.sp),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.green,
              
                            ),
                            child: ImageUtil.dummyImgClass.profilePic,
                          ),
                        ),
                      ),
              
                      Padding(
                        padding: EdgeInsets.only(left: 75.sp),
                        child: Container(
                          height: 36.sp,
                          width: 36.sp,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xff2D3039),
                          ),
                          child: Container(
                            margin: EdgeInsets.all(2.sp),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                colors: [
                                  Colors.white.withOpacity(0.25),
                                  Color(0xff2D3039),
                                ],
                              )
                            ),
                            child: Icon(Icons.add,size: 20.sp,color: Colors.white,),
                          ),
                        ),
                      )
                    ],
                  ),
              
                  SizedBox(height: 65.sp,),
              
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.sp),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Get JOBISTO",style: CustomTextStyle.semiBoldFont22Style,)),
              
                        SizedBox(height: 24.sp,),
              
                        CustomTextField(
                          onEditingComplete: () {
                            FocusScope.of(context).requestFocus(emailFocusNode);
                          },
                          name: "Name",
                          focusNode: nameFocusNode,
                          controller: nameController,
                          textInputAction: TextInputAction.next,
                          hint: "Enter Name",
                          isOptional: false,
                        ),
              
                        SizedBox(height: 10.sp,),
              
                        CustomTextField(
                          name: "Email",
                          onEditingComplete: () {
                            FocusScope.of(context).requestFocus(mobileFocusNode);
                          },
                          focusNode: emailFocusNode,
                          controller: emailController,
                          textInputAction: TextInputAction.next,
                          hint: "Enter Email Address",
                          isOptional: false,
                        ),
              
                        SizedBox(height: 10.sp,),
              
                        CustomTextField(
                          focusNode: mobileFocusNode,
                          name: "Mobile Number",
                          onEditingComplete: () {
                            FocusScope.of(context).requestFocus(passwordFocusNode);
                          },
                          controller: mobileController,
                          textInputAction: TextInputAction.next,
                          hint: "Enter Mobile Number",
                          isOptional: false,
                        ),
              
                        SizedBox(height: 10.sp,),
              
                        CustomTextField(
                          onEditingComplete: () {
                            FocusScope.of(context).requestFocus(confirmPasswordFocusNode);
                          },
                          focusNode: passwordFocusNode,
                          name: "Password",
                          controller: passwordController,
                          textInputAction: TextInputAction.next,
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
                          hint: "Enter Password",
                          isOptional: false,
                        ),
              
                        SizedBox(height: 10.sp,),
              
                        CustomTextField(
                          focusNode: confirmPasswordFocusNode,
                          name: "Confirm Password",
                          onEditingComplete: () {
                            FocusScope.of(context).unfocus();
                          },
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
                          controller: confirmPasswordController,
                          textInputAction: TextInputAction.done,
                          hint: "Confirm Password",
                          isOptional: false,
                        ),
              
                        SizedBox(height: 20.sp,),
              
                        Text("Invite a fellow hard worker to Get JOBISTO",style: CustomTextStyle.yellowRegularFont16Style.copyWith(decoration: TextDecoration.underline,decorationColor: kPrimaryColor),),
              
                        SizedBox(height: 22.sp,),
              
                        InkWell(
                          onTap: () {
                            setState(() {
                              isCheckBoxSelected = !isCheckBoxSelected;
                            });
                          },
                          child: Row(
                            children: [
              
                              CustomCheckBox(
                                value: isCheckBoxSelected,
                                onChanged: (value) {
                                  setState(() {
                                    isCheckBoxSelected = value == true;
                                  });
                                },
                              ),
              
                              SizedBox(width: 8.sp,),
              
                              Text("I accept Terms and Conditions...",style: CustomTextStyle.lightTextFieldStyle,)
                            ],
                          ),
                        ),
              
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 60.sp),
                          child: CustomButton(
                            onTap: () {
                              showModalBottomSheet(context: context,
                                useRootNavigator: true,
                                backgroundColor: Colors.transparent,
                                isScrollControlled: true,
                                elevation: 0,
                                builder: (context) {
                                return OtpBottomSheet();
                              },);
                            },
                            btnText: "Sign up",
                            textStyle: CustomTextStyle.blackSemiBoldFont16Style,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
          

      ),
    );
  }
}
