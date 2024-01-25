import 'dart:io';

import 'package:flutter/material.dart';
import 'package:jobisto/base/common_components/custom/custom_appbar_prefix_icon.dart';
import 'package:jobisto/base/common_components/custom/custom_background.dart';
import 'package:jobisto/base/common_components/custom/custom_button.dart';
import 'package:jobisto/utils/utils.dart';

import '../../../base/base.dart';
import '../../../base/common_components/custom/custom_checkbox.dart';
import '../../../base/common_components/custom/multi_selection_photo.dart';
import '../../menu/domin/dummy_model.dart';

class CreateJobScreen extends StatefulWidget {
  const CreateJobScreen({super.key});

  @override
  State<CreateJobScreen> createState() => _CreateJobScreenState();
}

class _CreateJobScreenState extends State<CreateJobScreen> {

  String dropdownValue = "Day";
  List<File>? mediaFileList = [];
  bool isCheckBoxSelected = false;

  TextEditingController jobTitleController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController timeController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController hourlyRateController = TextEditingController();
  TextEditingController budgetController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Create/Post JOB",style: CustomTextStyle.semiBoldFont20Style,),
        leadingWidth: 76.sp,
        leading: CustomAppbarPrefixIcon(),
      ),
      body: CustomBackGround(
        childBody: Column(
          children: [

            Expanded(
              child: SafeArea(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.sp),
                  child: ListView(
                    padding: EdgeInsets.zero,
                    children: [
                      Row(
                        children: [
                          Text("JOB Title",style: CustomTextStyle.regularFont16Style,),
                          Text("*",style: CustomTextStyle.regularFont16Style.copyWith(color: Colors.red),),
                        ],
                      ),
              
                      SizedBox(height: 10.sp),
              
                      CustomTextField(
                        name: "Name",
                        textInputAction: TextInputAction.next,
                        inputType: TextInputType.name,
                        controller: jobTitleController,
                        hint: "Plumbing",
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
                        hint: "Details...",
                        /*  focusNode: mobile,
                                              onEditingComplete:() {
                                                password.requestFocus();
                                              },*/
                        isOptional: true,
                      ),
              
                      SizedBox(height: 20.sp),
              
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
              
                      SizedBox(height: 20.sp),
              
                      Row(
                        children: [
                          Text("Skills Required",style: CustomTextStyle.regularFont16Style,),
                          Text("*",style: CustomTextStyle.regularFont16Style.copyWith(color: Colors.red),),
                        ],
                      ),
              
                      SizedBox(height: 10.sp),



                      Container(
                        height: 54.sp,
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
              
                      SizedBox(height: 20.sp,),
                      
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
              
                          Text.rich(
                            TextSpan(
                              text: "Budget",
                              style: CustomTextStyle.regularFont14Style,
                              children: [
                                TextSpan(
                                  text: "*",
                                  style: CustomTextStyle.regularFont16Style.copyWith(color: Colors.red)
                                )
                              ]
                            )
                          ),
              
                          SizedBox(height: 10.sp),
              
                          Row(
                            children: [
                              
                              Expanded(
                                child: CustomTextField(
                                  inputType: TextInputType.number,
                                  controller: budgetController,
                                  hint: "\$50.00",
                                  name: "Budget",
                                ),
                              ),
              
                              SizedBox(width: 35.sp,),
              
                              CustomCheckBox(
                                value: isCheckBoxSelected,
                                onChanged: (value) {
                                  setState(() {
                                    isCheckBoxSelected = value == true;
                                  });
                                },
                              ),
              
                              SizedBox(width: 8.sp,),
              
                              Text("Non Negotiable",style: CustomTextStyle.lightTextFieldStyle,),
                            ],
                          )
              
                        ],
                      ),
              
              
                      SizedBox(height: 20.sp),
              
                      Row(
                        children: [
                          Text("Expected Time",style: CustomTextStyle.regularFont16Style,),
                          Text("*",style: CustomTextStyle.regularFont16Style.copyWith(color: Colors.red),),
                        ],
                      ),
              
                      SizedBox(height: 10.sp),
              
                      Row(
                        children: [
              
                          Expanded(
                            child: CustomTextField(
                              controller: timeController,
                              name:"Expected Time",
                              hint: "Expected Time",
                              isOptional: true,
                              inputType: TextInputType.number,
                              validationMessage: "This field is required",
                              emptyMessage: "This field is required",
                            ),
                          ),
              
              
                          Container(
                            margin: EdgeInsets.only(left: 10.sp),
                            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                            decoration: BoxDecoration(
                                color: Colors.transparent, borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: kLightGrayColor)
                            ),
                            child: DropdownButton<String>(
                              dropdownColor: kLightGrayColor,
                              padding: EdgeInsets.zero,
                              value: dropdownValue ,
                              onChanged: (newValue) {
                                setState(() {
                                  dropdownValue = newValue ?? "";
                                });
                              },
              
                              items: timeList?.map((e) {
                                return DropdownMenuItem(
                                    alignment: AlignmentDirectional.centerStart,
                                    value: e,
                                    child: Text(e ?? "",style: CustomTextStyle.regularFont16Style,
                                      textAlign: TextAlign.start,)
                                );
                              }).toList(),
              
                              icon: const Icon(Icons.arrow_drop_down),
              
                              iconSize: 30,
              
                              underline: const SizedBox(),
                            ),
                          )
              
                        ],
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

                      SizedBox(height: 20.sp),

                      Row(
                        children: [
                          Text("Terms & Conditions",style: CustomTextStyle.regularFont16Style,),
                          Text("*",style: CustomTextStyle.regularFont16Style.copyWith(color: Colors.red),),
                        ],
                      ),

                      SizedBox(height: 10.sp),

                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 7.sp,vertical: 17.sp),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.sp),
                          border: Border.all(
                            color: kLightGrayColor
                          )
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Lorem ipsum dolor sit amet consectetur.",style: CustomTextStyle.lightTextFieldStyle,),

                            Text("Dignissim ut amet lorem turpis diam.",style: CustomTextStyle.lightTextFieldStyle,),

                            Text("Phasellus netus neque tincidunt diam lectus ultrices porta et nunc. ",style: CustomTextStyle.lightTextFieldStyle,)


                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left: 20.sp,right: 20.sp,top: 14.sp,bottom: 30.sp),
              child: Row(
                children: [

                  Expanded(
                    child: CustomButton(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      btnColor: Colors.transparent,
                      border: Border.all(
                          color: Color(0xff6F778B)
                      ),
                      btnText: "Cancel",
                      textStyle: CustomTextStyle.semiBoldFont16Style.copyWith(color: kPrimaryColor),
                    ),
                  ),

                  SizedBox(width: 8.sp,),

                  Expanded(
                    child: CustomButton(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      btnText: "Save",
                      textStyle: CustomTextStyle.semiBoldFont16Style.copyWith(color: kBlackColor),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget commonChip(){
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 8.sp,horizontal: 5.sp),
          padding: EdgeInsets.symmetric(horizontal: 10.sp,vertical: 6.sp),
          decoration: BoxDecoration(
            color: kLightGrayColor.withOpacity(0.16),
            borderRadius: BorderRadius.circular(60.sp),
          ),
          child: Text("Hardware",style: CustomTextStyle.regularFont14Style,),
        ),
        Positioned(
          right: 5.sp,
          top: 5.sp,
          child: Container(
              height: 15.sp,
              width: 15.sp,
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
