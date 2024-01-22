import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobisto/app/tab_seller/components/custom_gridview_job_details.dart';
import 'package:jobisto/app/tab_seller/domain/dummy_models/job_details_model.dart';
import 'package:jobisto/base/common_components/custom/custom_appbar_prefix_icon.dart';
import 'package:jobisto/base/common_components/custom/custom_background.dart';
import 'package:jobisto/utils/utils.dart';

class JobDetailsScreen extends StatefulWidget {
  const JobDetailsScreen({super.key});

  @override
  State<JobDetailsScreen> createState() => _JobDetailsScreenState();
}

class _JobDetailsScreenState extends State<JobDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {

      },

        shape: CircleBorder(),
      child: SizedBox(
        height: 30.sp,
        width: 30.sp,
        child: ImageUtil.iconImageClass.messageChatIcon,
      ),
      ),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leadingWidth: 76.sp,
        leading: const CustomAppbarPrefixIcon(),
        centerTitle: true,
        title: Text(
          "JOB Detail",
          style: CustomTextStyle.semiBoldFont20Style,
        ),
      ),
      body: CustomBackGround(
        childBody: SafeArea(
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.sp),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Proposal Details",
                            style: CustomTextStyle.semiBoldFont20Style,
                          ),
                          SizedBox(
                            height: 24.sp,
                            width: 24.sp,
                            child: ImageUtil.iconImageClass.starIcon,
                          )
                        ],
                      ),
                  
                      SizedBox(
                        height: 7.sp,
                      ),
                  
                      Row(
                        children: [
                          ImageUtil.iconImageClass.pendingClock,
                          SizedBox(
                            width: 6.sp,
                          ),
                          Text(
                            "Pending",
                            style: CustomTextStyle.regularFont14Style
                                .copyWith(color: kYellowColor),
                          )
                        ],
                      ),
                  
                      SizedBox(
                        height: 20.sp,
                      ),
                  
                     CustomGridForJobDetails(),
                  
                      SizedBox(height: 20.sp,),
                  
                      Divider(
                        height: 0,
                        color: kLightGrayColor.withOpacity(0.50),
                      ),
                  
                      SizedBox(height: 20.sp,),
                  
                  
                      
                      Text("Plumbing",style: CustomTextStyle.semiBoldFont22Style,),
                  
                      SizedBox(height: 8.sp,),
                      
                      Text("\$50.00",style: CustomTextStyle.regularFont16Style.copyWith(color: kPrimaryColor),),
                  
                      Text.rich(
                        TextSpan(
                          text: "Skilled professional needed for installing toilet seat. Proficient in assembly, alignment and stability. Attention to detail and plumbing knowledge requir ",
                          style: CustomTextStyle.lightTextFieldStyle.copyWith(color: kSecondaryColor.withOpacity(0.80)),
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
                  
                          SizedBox(
                            height: 30.sp,
                            width: 30.sp,
                            child: ImageUtil.dummyImgClass.profile11,
                          ),
                  
                          SizedBox(width: 8.sp,),
                  
                          Text("Jabari Osei",style: CustomTextStyle.regularFont14Style,),
                  
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 12.sp),
                            width: 1.sp,
                            height: 20.sp,
                            color: kSecondaryColor.withOpacity(0.25),
                          ),
                          
                          SizedBox(
                              height: 30.sp,
                              width: 30.sp,
                              child: ImageUtil.iconImageClass.calendarIcon),
                          
                          SizedBox(width: 6.sp,),
                          
                          Text("11/25/2023",style: CustomTextStyle.regularFont14Style,),
                  
                        ],
                      ),
                  
                      Container(height: 500.sp,color: kLightGrayColor,),
                  
                      Row(
                        children: [
                  
                          SizedBox(
                            height: 24.sp,
                            width: 24.sp,
                            child: ImageUtil.iconImageClass.termsAndConditionIcon,
                          ),
                          
                          Text("Terms & Conditions",style: CustomTextStyle.yellowRegularFont16Style.copyWith(decoration: TextDecoration.underline,decorationColor: kPrimaryColor),)
                  
                        ],
                      )
                    ],
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
