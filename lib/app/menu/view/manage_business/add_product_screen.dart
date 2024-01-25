import 'dart:io';
import '../../../../base/base.dart';
import 'package:flutter/material.dart';
import 'package:jobisto/utils/utils.dart';
import '../../components/common_appbar.dart';
import '../../../../base/common_components/custom/custom_button.dart';
import '../../../../base/common_components/custom/custom_background.dart';
import '../../../../base/common_components/custom/multi_selection_photo.dart';

class AddProductScreen extends StatefulWidget {
  const AddProductScreen({super.key});

  @override
  State<AddProductScreen> createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController budgetController = TextEditingController();

  List<File>? mediaFileList = [];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomBackGround(
        childBody: Stack(
          children: [
            Padding(padding:EdgeInsets.only(
                left: 15.sp,right: 15.sp,
                bottom: MediaQuery.of(context).padding.bottom + 50.sp
            ),
              child: Column(
                children: [
                  CommonAppBar(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    centerText: "My Service",
                    child: Padding(
                      padding:  EdgeInsets.all(8.0),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(50.sp),
                        onTap: (){},
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
                              child: CustomSvgPictures.asset("$iconPath/add.svg", fit: BoxFit.cover,color: kPrimaryColor),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                  Expanded(
                    child: ListView(
                      padding: EdgeInsets.zero,
                      children: [
                        Row(
                          children: [
                            Text("Portfolio Name",style: CustomTextStyle.regularFont16Style,),
                            Text("*",style: CustomTextStyle.regularFont16Style.copyWith(color: Colors.red),),
                          ],
                        ),

                        SizedBox(height: 10.sp),

                        CustomTextField(
                          name: "Name",
                          textInputAction: TextInputAction.next,
                          inputType: TextInputType.name,
                          controller: nameController,
                          hint: "Name",
                          /*  focusNode: mobile,
                                      onEditingComplete:() {
                                        password.requestFocus();
                                      },*/
                          isOptional: true,
                        ),

                        SizedBox(height: 20.sp),

                        Row(
                          children: [
                            Text("JOB Detail",style: CustomTextStyle.regularFont16Style,),
                            Text("*",style: CustomTextStyle.regularFont16Style.copyWith(color: Colors.red),),
                          ],
                        ),

                        SizedBox(height: 10.sp),

                        CustomDescriptionTextField(
                          name: "Details",
                          textInputAction: TextInputAction.next,
                          inputType: TextInputType.name,
                          controller: addressController,
                          maxLine: 5,
                          hint: "Details",
                          /*  focusNode: mobile,
                                      onEditingComplete:() {
                                        password.requestFocus();
                                      },*/
                          isOptional: true,
                        ),

                        SizedBox(height: 20.sp),

                        Row(
                          children: [
                            Text("Budget",style: CustomTextStyle.regularFont16Style,),
                            Text("*",style: CustomTextStyle.regularFont16Style.copyWith(color: Colors.red),),
                          ],
                        ),

                        SizedBox(height: 10.sp),

                        CustomTextField(
                          name: "Budget",
                          textInputAction: TextInputAction.next,
                          inputType: TextInputType.name,
                          controller: budgetController,
                          hint: "Budget",
                          /*  focusNode: mobile,
                                      onEditingComplete:() {
                                        password.requestFocus();
                                      },*/
                          isOptional: true,
                        ),

                        SizedBox(height: 20.sp),

                        MultiSelectionImage(
                          // apiImgList: imageList,
                          imageFileList: mediaFileList,
                          imageFileDataTap: (val){
                            setState(() {});
                          },
                          deleteImageOnTap: (val)async{
                          },
                          headerText: "Upload Logo",
                        ),
                      ]
                    ),
                  )
                ],
              ),
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 54.sp,
                  padding:  EdgeInsets.symmetric(horizontal: 20.sp),
                  child: CustomButton(
                    btnText: "Next",
                    textStyle: CustomTextStyle.blackSemiBoldFont16Style,
                    onTap: (){
                    },
                  ),
                ),

                SizedBox(height: 20.sp,)
              ],
            )
          ],
        )
      ),
    );
  }
}
