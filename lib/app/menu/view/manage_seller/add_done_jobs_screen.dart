import 'dart:io';
import '../../../../base/base.dart';
import 'package:flutter/material.dart';
import 'package:jobisto/utils/utils.dart';
import '../../components/common_appbar.dart';
import 'package:jobisto/app/menu/domin/dummy_model.dart';
import '../../../../base/common_components/custom/custom_background.dart';
import '../../../../base/common_components/custom/custom_button.dart';
import '../../../../base/common_components/custom/multi_selection_photo.dart';

class AddDoneJobs extends StatefulWidget {
  const AddDoneJobs({super.key});

  @override
  State<AddDoneJobs> createState() => _AddDoneJobsState();
}

class _AddDoneJobsState extends State<AddDoneJobs> {

  String dropdownValue = "Day";
  List<File>? mediaFileList = [];

  TextEditingController nameController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController timeController = TextEditingController();
  TextEditingController budgetController = TextEditingController();
  TextEditingController hourlyRateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:CustomBackGround(
        childBody: Stack(
          children: [
            Padding(
              padding:EdgeInsets.only(
                left: 15.sp,right: 15.sp,
                bottom: MediaQuery.of(context).padding.bottom + 50.sp
              ),
              child: Column(
                children: [
                  CommonAppBar(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    centerText: "Add My Done JOBs",
                  ),

                  
                  Expanded(
                    child: Padding(
                      padding:  EdgeInsets.only(top: 15.sp,bottom: MediaQuery.of(context).padding.bottom + 50.sp),
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
                              Text("Skils",style: CustomTextStyle.regularFont16Style,),
                              Text("*",style: CustomTextStyle.regularFont16Style.copyWith(color: Colors.red),),
                            ],
                          ),
                          
                          SizedBox(height: 10.sp),
                          
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
                        ],
                      ),
                    ),
                  ),

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
      ),
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
