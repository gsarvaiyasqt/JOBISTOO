import 'package:flutter/material.dart';
import 'package:jobisto/app/tab_orders/common_component/custom_job_app_bar.dart';
import 'package:jobisto/app/tab_seller/route/tab_seller_route.dart';
import 'package:jobisto/base/common_components/custom/custom_background.dart';
import 'package:jobisto/base/common_components/custom/custom_button.dart';
import 'package:jobisto/utils/utils.dart';

import '../../tab_orders/domain/dummy_models/skilles_model.dart';

class ManagedJobsSubDetailsScreen extends StatefulWidget {
  const ManagedJobsSubDetailsScreen({super.key});

  @override
  State<ManagedJobsSubDetailsScreen> createState() => _ManagedJobsSubDetailsScreenState();
}

class _ManagedJobsSubDetailsScreenState extends State<ManagedJobsSubDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: CustomJabAppbar(
          image: ImageUtil.iconImageClass.toiletProfileIcon,
          height: 226.sp,
        ),
        body: CustomBackGround(
          childBody: Stack(
            alignment: Alignment.bottomCenter,
            children: [

              SafeArea(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.sp),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        SizedBox(height: 20.sp,),

                        Text("Installing Toilet Seat",style: CustomTextStyle.semiBoldFont22Style,),

                        SizedBox(height: 8.sp,),

                        Text("\$50.00",style: CustomTextStyle.yellowRegularFont16Style,),

                        SizedBox(height: 8.sp,),

                        Text.rich(
                          TextSpan(
                            text: "Skilled professional needed for installing toilet seat. Proficient in assembly, ensuring proper alignment and stability. Attention to detail and plumbing knowledge required. ",
                            style: CustomTextStyle.regularFont16Style.copyWith(color: kSecondaryColor.withOpacity(0.80)),
                            children: [
                              TextSpan(
                                text: "Read more",
                                style: CustomTextStyle.yellowRegularFont16Style
                              )
                            ]
                          )
                        ),

                        SizedBox(height: 8.sp,),

                        Row(
                          children: [

                            Container(
                              height: 30.sp,
                              width: 30.sp,
                              decoration: BoxDecoration(
                                color: kSecondaryColor,
                                border: Border.all(color: kSecondaryColor),
                                shape: BoxShape.circle
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: SizedBox(
                                  child: ImageUtil.dummyImgClass.profilePic,
                                ),
                              ),
                            ),

                            SizedBox(width: 8.sp,),

                            Text("Jabari Osei",style: CustomTextStyle.regularFont14Style,),

                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 12.sp),
                              height: 20.sp,
                              width: 1.sp,
                              color: kSecondaryColor.withOpacity(0.25),
                            ),

                            SizedBox(
                              height: 24.sp,
                              width: 24.sp,
                              child: ImageUtil.iconImageClass.calendarIcon,
                            ),

                            SizedBox(width: 6.sp,),

                            Text("11/25/2023",style: CustomTextStyle.regularFont14Style,)
                          ],
                        ),

                        SizedBox(height: 24.sp,),

                        Container(
                          padding: EdgeInsets.all(12.sp),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: kLightGrayColor.withOpacity(0.17),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("JOB Location",style: CustomTextStyle.primaryTextColorFont14W400,),
                              SizedBox(height: 8.sp),
                              Row(
                                children: [
                                  Flexible(child: Text("Nairobi, Kenya",style: CustomTextStyle.primaryTextColorFont18W400,)),
                                ],
                              ),
                              SizedBox(height: 16.sp),
                              Container(
                                height: 1.sp,
                                color: kLightGrayColor.withOpacity(0.5),
                              ),
                              SizedBox(height: 16.sp),
                              Text("Skills",style: CustomTextStyle.primaryTextColorFont14W400,),
                              SizedBox(height: 8.sp),
                              Wrap(
                                spacing: 8.sp,
                                children: List.generate(SkillsModel.skillsList.length, (index) {
                                  return Container(
                                    padding: EdgeInsets.symmetric(horizontal: 15.sp,vertical: 8.sp),
                                    decoration: BoxDecoration(
                                        color: Color(0xff6F778B).withOpacity(0.16),
                                        borderRadius: BorderRadius.circular(60.sp)
                                    ),
                                    child: Text(SkillsModel.skillsList[index].skill ?? "",style: CustomTextStyle.primaryTextColorFont16W400.copyWith(
                                        fontWeight: FontWeight.w300
                                    ),),
                                  );
                                }),
                              ),
                              SizedBox(height: 16.sp),
                              Container(
                                height: 1.sp,
                                color: kLightGrayColor.withOpacity(0.5),
                              ),
                              SizedBox(height: 16.sp),
                              Text("Expected Time",style: CustomTextStyle.primaryTextColorFont14W400,),
                              SizedBox(height: 8.sp),
                              Row(
                                children: [
                                  Flexible(child: Text("30 Days",style: CustomTextStyle.primaryTextColorFont18W400,)),
                                ],
                              ),
                            ],
                          ),
                        ),

                        SizedBox(height: 16.sp,),

                        Row(
                          children: [

                            SizedBox(
                              height: 24.sp,
                              width: 24.sp,
                              child: ImageUtil.iconImageClass.termsAndConditionIcon,
                            ),



                            Text("Terms & Conditions",style: CustomTextStyle.yellowRegularFont16Style.copyWith(decoration: TextDecoration.underline,decorationColor: kPrimaryColor),)

                          ],
                        ),

                        SizedBox(height: 90.sp,)
                      ],
                    ),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(left: 20.sp,right: 20.sp,bottom: 30.sp),
                child: SizedBox(
                  height: 54.sp,
                  child: CustomButton(
                    onTap: () {
                      TabSellerRoute.goToJobsApplyPage(context);
                    },
                    btnText: "Apply Now",
                    textStyle: CustomTextStyle.semiBoldFont16Style.copyWith(color: Colors.black),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
