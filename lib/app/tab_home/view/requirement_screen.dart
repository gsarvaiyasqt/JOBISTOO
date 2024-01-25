import 'dart:io';
import 'package:flutter/material.dart';
import 'package:jobisto/app/tab_home/route/home_route.dart';
import 'package:jobisto/base/common_components/custom/custom_appbar_prefix_icon.dart';
import 'package:jobisto/base/common_components/custom/custom_background.dart';
import 'package:jobisto/base/common_components/custom/custom_button.dart';
import 'package:jobisto/utils/utils.dart';

import '../../../base/base.dart';
import '../../../base/common_components/custom/multi_selection_photo.dart';
import '../../menu/domin/dummy_model.dart';

class RequirementScreen extends StatefulWidget {
  const RequirementScreen({super.key});

  @override
  State<RequirementScreen> createState() => _RequirementScreenState();
}

class _RequirementScreenState extends State<RequirementScreen> {

  String dropdownValue = "Day";
  List<File>? mediaFileList = [];

  TextEditingController locationController = TextEditingController();
  TextEditingController needController = TextEditingController();
  TextEditingController timeController = TextEditingController();

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
        childBody: Column(
          children: [

            Expanded(
              child: SafeArea(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.sp),
                  child: Column(
                    children: [

                      SizedBox(height: 20.sp,),

                      Row(
                        children: [
                          Text("I Need",style: CustomTextStyle.regularFont16Style,),
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
                        controller: needController,
                        hint: "Plumber to fix leaking geyser",
                        isOptional: true,
                      ),

                      SizedBox(height: 20.sp,),

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

                      SizedBox(height: 20.sp,),

                      Row(
                        children: [
                          Text("When",style: CustomTextStyle.regularFont16Style,),
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

                              items: timeList.map((e) {
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
                          ),


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
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.sp),
              child: CustomButton(
                onTap: () {
                  TabHomeRoute.goToTakeTheJobPage(context);
                },
                btnText: "Next",
              ),
            ),

            SizedBox(height: 30.sp,)
          ],
        ),
      ),
    );
  }
}
