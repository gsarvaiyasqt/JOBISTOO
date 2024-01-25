import 'dart:io';

import 'package:flutter/material.dart';

import '../../../../base/base.dart';
import '../../../../base/common_components/custom/custom_background.dart';
import '../../../../base/common_components/custom/custom_button.dart';
import '../../../../base/common_components/custom/multi_selection_photo.dart';
import '../../../../utils/utils.dart';
import '../../components/common_appbar.dart';

class MyJobistoProfile extends StatefulWidget {
  const MyJobistoProfile({super.key});

  @override
  State<MyJobistoProfile> createState() => _MyJobistoProfileState();
}

class _MyJobistoProfileState extends State<MyJobistoProfile> {
  TextEditingController nameController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController hourlyRateController = TextEditingController();

  List<File>? certificateFileList = [];
  List<File>? mediaFileList = [];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:CustomBackGround(
            childBody: Stack(
              children: [
                Padding(
                  padding:EdgeInsets.only(left: 20.sp,right: 20.sp,bottom: MediaQuery.of(context).padding.bottom + 50.sp),
                  child: Column(
                    children: [
                      CommonAppBar(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        centerText: "My JOBISTO Profile",
                      ),

                      Expanded(
                        child: Padding(
                          padding:  EdgeInsets.only(top: 15.sp,bottom: MediaQuery.of(context).padding.bottom + 50.sp),
                          child: ListView(
                            padding: EdgeInsets.zero,
                            children: [

                              Row(
                                children: [
                                  Text("Name",style: CustomTextStyle.regularFont16Style,),
                                  Text("*",style: CustomTextStyle.regularFont16Style.copyWith(color: Colors.red),),
                                ],
                              ),

                              SizedBox(height: 10.sp),

                              CustomTextField(
                                name: "name",
                                textInputAction: TextInputAction.next,
                                inputType: TextInputType.name,
                                controller: hourlyRateController,
                                hint: "Name",
                                /*  focusNode: mobile,
                          onEditingComplete:() {
                            password.requestFocus();
                          },*/
                                isOptional: true,
                              ),

                              SizedBox(height: 15.sp),

                              Row(
                                children: [
                                  Text("My Skils",style: CustomTextStyle.regularFont16Style,),
                                  Text("*",style: CustomTextStyle.regularFont16Style.copyWith(color: Colors.red),),
                                ],
                              ),

                              SizedBox(height: 15.sp),

                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      height: 76.sp,
                                      padding: EdgeInsets.symmetric(horizontal: 8.sp),
                                      decoration: BoxDecoration(
                                        border: Border.all(color: kLightGrayColor),
                                        borderRadius: BorderRadius.circular(12.sp),
                                      ),
                                      child: ListView.builder(
                                        scrollDirection: Axis.horizontal,
                                        itemCount: 5,
                                        itemBuilder: (context, index) {
                                          return commonChip();
                                        },
                                      ),
                                    ),
                                  ),

                                  SizedBox(width: 10.sp),

                                  Container(
                                    height: 50.sp,
                                    width: 50.sp,
                                    padding: EdgeInsets.all(8.sp),
                                    decoration: BoxDecoration(
                                      color: kLightGrayColor.withOpacity(0.16.sp),
                                      shape: BoxShape.circle,
                                    ),
                                    child: ImageUtil.iconImageClass.addIcon,
                                  )
                                ],
                              ),


                              SizedBox(height: 30.sp),

                              MultiSelectionImage(
                                // apiImgList: imageList,
                                imageFileList: certificateFileList,
                                imageFileDataTap: (val){
                                  setState(() {});
                                },
                                deleteImageOnTap: (val)async{
                                },
                                headerText: "Upload Business Certificate",
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
                                headerText: "Upload Media",
                              ),

                            ],
                          ),
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
        )
    );
  }

  Widget commonChip(){
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 8.sp,horizontal: 5.sp),
          padding: EdgeInsets.symmetric(horizontal: 20.sp,vertical: 8.sp),
          decoration: BoxDecoration(
            color: kLightGrayColor.withOpacity(0.16),
            borderRadius: BorderRadius.circular(60.sp),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Hardware",style: CustomTextStyle.regularFont14Style,),

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("4.2",style: CustomTextStyle.regularFont14Style,),
                  SizedBox(width: 5.sp),
                  Container(
                      margin: EdgeInsets.only(top: 2.sp),
                      width: 14.sp,
                      height: 14.sp,
                      child: ImageUtil.iconImageClass.starIcon)
                ],
              ),
            ],
          ),
        ),
        Positioned(
          right: 0,
          top: 2,
          child: Container(
              height: 21.sp,
              width: 21.sp,
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle
              ),
              child: Padding(
                padding:  EdgeInsets.all(3.sp),
                child: CustomSvgPictures.asset("$iconPath/cancel.svg", fit: BoxFit.cover,color: kDarkGreyColor,),
              )
          ),
        )
      ],
    );
  }
}
