import 'dart:io';

import 'package:flutter/material.dart';
import 'package:jobisto/utils/utils.dart';

import '../../../../base/base.dart';
import '../../../../base/common_components/custom/custom_background.dart';
import '../../../../base/common_components/custom/custom_button.dart';
import '../../../../base/common_components/custom/multi_selection_photo.dart';
import '../../components/common_appbar.dart';
import '../../domin/dummy_model.dart';

class JobberServicesScreen extends StatefulWidget {
  const JobberServicesScreen({super.key});

  @override
  State<JobberServicesScreen> createState() => _JobberServicesScreenState();
}

class _JobberServicesScreenState extends State<JobberServicesScreen> {

  TextEditingController nameController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController hourlyRateController = TextEditingController();

  String countyValue = "africa";
  String experienceValue = "Bachelor";

  List<File>? certificateFileList = [];
  List<File>? mediaFileList = [];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        body: CustomBackGround(
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
                      centerText: "Jobber Service",
                    ),

                    Expanded(
                      child: Padding(
                        padding:  EdgeInsets.only(top: 15.sp,bottom: MediaQuery.of(context).padding.bottom + 50.sp),
                        child: ListView(
                          padding: EdgeInsets.zero,
                          children: [

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
                                    decoration: BoxDecoration(
                                      border: Border.all(color: kLightGrayColor),
                                      borderRadius: BorderRadius.circular(12.sp),
                                    ),
                                    child: Row(
                                      children: [

                                      ],
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

                            Align(
                                alignment: Alignment.topLeft,
                                child: Text("Address",style: CustomTextStyle.semiBoldFont20Style,)
                            ),

                            SizedBox(height: 15.sp),

                            Row(
                              children: [
                                Text("Street Address",style: CustomTextStyle.regularFont16Style,),
                                Text("*",style: CustomTextStyle.regularFont16Style.copyWith(color: Colors.red),),
                              ],
                            ),

                            SizedBox(height: 10.sp),

                            CustomTextField(
                              name: "Address",
                              textInputAction: TextInputAction.next,
                              inputType: TextInputType.name,
                              controller: addressController,
                              hint: "Address",
                              /*  focusNode: mobile,
                          onEditingComplete:() {
                            password.requestFocus();
                          },*/
                              isOptional: true,
                            ),

                            SizedBox(height: 20.sp),

                            Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text("City/Town",style: CustomTextStyle.regularFont16Style,),
                                          Text("*",style: CustomTextStyle.regularFont16Style.copyWith(color: Colors.red),),
                                        ],
                                      ),

                                      SizedBox(height: 10.sp),

                                      CustomTextField(
                                        name: "City",
                                        textInputAction: TextInputAction.next,
                                        inputType: TextInputType.name,
                                        controller: addressController,
                                        hint: "City",
                                        /*  focusNode: mobile,
                                                        onEditingComplete:() {
                                  password.requestFocus();
                                                        },*/
                                        isOptional: true,
                                      ),
                                    ],
                                  ),
                                ),

                                SizedBox(width: 10.sp),

                                Expanded(
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text("Region/State",style: CustomTextStyle.regularFont16Style,),
                                          Text("*",style: CustomTextStyle.regularFont16Style.copyWith(color: Colors.red),),
                                        ],
                                      ),

                                      SizedBox(height: 10.sp),

                                      CustomTextField(
                                        name: "State",
                                        textInputAction: TextInputAction.next,
                                        inputType: TextInputType.name,
                                        controller: addressController,
                                        hint: "State",
                                        /*  focusNode: mobile,
                                                        onEditingComplete:() {
                                  password.requestFocus();
                                                        },*/
                                        isOptional: true,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(height: 20.sp),

                            Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text("Postal Code",style: CustomTextStyle.regularFont16Style,),
                                          Text("*",style: CustomTextStyle.regularFont16Style.copyWith(color: Colors.red),),
                                        ],
                                      ),

                                      SizedBox(height: 10.sp),

                                      CustomTextField(
                                        name: "Postal Code",
                                        textInputAction: TextInputAction.next,
                                        inputType: TextInputType.name,
                                        controller: addressController,
                                        hint: "Postal Code",
                                        /*  focusNode: mobile,
                                                        onEditingComplete:() {
                                  password.requestFocus();
                                                        },*/
                                        isOptional: true,
                                      ),
                                    ],
                                  ),
                                ),

                                SizedBox(width: 10.sp),

                                Expanded(
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text("Country",style: CustomTextStyle.regularFont16Style,),
                                          Text("*",style: CustomTextStyle.regularFont16Style.copyWith(color: Colors.red),),
                                        ],
                                      ),

                                      SizedBox(height: 10.sp),

                                      DropdownButtonFormField(
                                        dropdownColor: kDarkGreyColor,
                                        decoration:  InputDecoration(
                                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12.sp)),

                                          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12.sp),
                                              borderSide: BorderSide(color: kLightGrayColor)
                                          ),
                                        ),

                                        value: countyValue,

                                        items:  countyList.map((e) {
                                          return DropdownMenuItem(
                                              alignment: AlignmentDirectional.centerStart,
                                              value: e,
                                              child: Text(e ?? "",style: CustomTextStyle.lightFont18Style.copyWith(fontSize: 16.sp),
                                                textAlign: TextAlign.start,)
                                          );
                                        }).toList(),
                                        onChanged: (newValue) async{
                                          print("$newValue === check this dropdown value");
                                          try {
                                            setState(() {
                                              countyValue = newValue ?? "Africa";
                                            });

                                          } catch (e) {
                                            print(e);
                                          }
                                        },
                                      ),

                                    ],
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(height: 20.sp),

                            Align(
                                alignment: Alignment.topLeft,
                                child: Text("Other Information",style: CustomTextStyle.semiBoldFont20Style,)
                            ),

                            SizedBox(height: 20.sp),

                            Row(
                              children: [
                                Text("Education/ Experience",style: CustomTextStyle.regularFont16Style,),
                                Text("*",style: CustomTextStyle.regularFont16Style.copyWith(color: Colors.red),),
                              ],
                            ),

                            SizedBox(height: 10.sp),

                            DropdownButtonFormField(
                              dropdownColor: kDarkGreyColor,
                              decoration:  InputDecoration(
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12.sp)),

                                focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12.sp),
                                    borderSide: BorderSide(color: kLightGrayColor)
                                ),
                              ),

                              value: experienceValue,

                              items:  eductionList.map((e) {
                                return DropdownMenuItem(
                                    alignment: AlignmentDirectional.centerStart,
                                    value: e,
                                    child: Text(e ?? "",style: CustomTextStyle.lightFont18Style.copyWith(fontSize: 16.sp),
                                      textAlign: TextAlign.start,)
                                );
                              }).toList(),
                              onChanged: (newValue) async{
                                print("$newValue === check this dropdown value");
                                try {
                                  setState(() {
                                    experienceValue = newValue ?? "Africa";
                                  });

                                } catch (e) {
                                  print(e);
                                }
                              },
                            ),

                            SizedBox(height: 20.sp),

                            Row(
                              children: [
                                Text("Street Address",style: CustomTextStyle.regularFont16Style,),
                                Text("*",style: CustomTextStyle.regularFont16Style.copyWith(color: Colors.red),),
                              ],
                            ),

                            SizedBox(height: 10.sp),

                            CustomTextField(
                              name: "Hourly Rate",
                              textInputAction: TextInputAction.next,
                              inputType: TextInputType.name,
                              controller: hourlyRateController,
                              hint: "Hourly Rate",
                              /*  focusNode: mobile,
                          onEditingComplete:() {
                            password.requestFocus();
                          },*/
                              isOptional: true,
                            ),

                            SizedBox(height: 20.sp),

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
          ),
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
