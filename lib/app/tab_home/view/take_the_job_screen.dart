import 'package:flutter/material.dart';
import 'package:jobisto/app/tab/view_model/dashboard_provider.dart';
import 'package:jobisto/app/tab_home/route/home_route.dart';
import 'package:jobisto/app/tab_orders/common_component/common_profile_component.dart';
import 'package:jobisto/base/common_components/custom/custom_appbar_prefix_icon.dart';
import 'package:jobisto/base/common_components/custom/custom_background.dart';
import 'package:jobisto/base/common_components/custom/custom_button.dart';
import 'package:jobisto/utils/utils.dart';
import 'package:provider/provider.dart';

import '../../tab_seller/domain/dummy_models/job_request_model.dart';

class TakeTheJobScreen extends StatefulWidget {
  const TakeTheJobScreen({super.key});

  @override
  State<TakeTheJobScreen> createState() => _TakeTheJobScreenState();
}

class _TakeTheJobScreenState extends State<TakeTheJobScreen> {
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text("Take the Job?",style: CustomTextStyle.semiBoldFont20Style),
        centerTitle: true,
        leadingWidth: 76.sp,
        leading: const CustomAppbarPrefixIcon(),
      ),
      body: CustomBackGround(
        childBody: Column(
          children: [

            Expanded(
              child: SafeArea(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.sp),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                    
                        ProfileCommonComponent(
                          icon: ImageUtil.dummyImgClass.profile11,
                          rating: "4.2",
                          profileName: "Jabari Osei",
                        ),
                    
                        SizedBox(height: 30.sp,),
                    
                        Text("Service",style: CustomTextStyle.semiBoldFont20Style,),
                    
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10.sp),
                              child: SizedBox(
                                height: 100.sp,
                                width: 120.sp,
                                child: Image.asset("assets/images/dummy_img/door_repair.png")
                              ),
                            ),
                    
                            SizedBox(width: 15.sp,),
                    
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Plumbing System Installation",style: CustomTextStyle.semiBoldFont16Style,),
                                  SizedBox(width: 6.sp,),
                                  Text("\$50.00",style: CustomTextStyle.yellowSemiBoldFont14Style),
                                  SizedBox(width: 6.sp,),
                                  Text("Setting up water supply lines, drainage systems, and fixtures...",style:  CustomTextStyle.lightFont14Style.copyWith(color: kSecondaryColor.withOpacity(0.80)),)
                                ],
                              ),
                            ),
                          ],
                        ),
                    
                        SizedBox(height: 15.sp,),
                    
                        Text("My Requirements",style: CustomTextStyle.semiBoldFont20Style,),
                    
                        SizedBox(height: 20.sp,),
                    
                        Container(
                          padding: EdgeInsets.all(12.sp),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: kLightGrayColor.withOpacity(0.17),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("JOB Detail",style: CustomTextStyle.primaryTextColorFont14W400,),
                              SizedBox(height: 8.sp),
                              Row(
                                children: [
                                  Flexible(child: Text("Lorem ipsum dolor sit amet consectetur. Dignissim ut amet lorem turpis diam. Phasellus netus neque tincidunt diam lectus ultrices porta et nunc. ",style: CustomTextStyle.primaryTextColorFont18W400,)),
                                ],
                              ),
                              SizedBox(height: 16.sp),
                              Container(
                                height: 1.sp,
                                color: kLightGrayColor.withOpacity(0.5),
                              ),
                    
                              SizedBox(height: 15.sp,),
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
                              SizedBox(height: 15.sp,),
                              Text("Expected Time",style: CustomTextStyle.primaryTextColorFont14W400,),
                              SizedBox(height: 8.sp),
                              Row(
                                children: [
                                  Flexible(child: Text("2 Days",style: CustomTextStyle.primaryTextColorFont18W400,)),
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
                                children: List.generate(
                                    ServiceClass.serviceList.length, (index) {
                                  return ClipRRect(
                                      borderRadius: BorderRadius.circular(10.sp),
                                      child: Image.asset("$dummyImgPath/${ServiceClass.serviceList[index].img}",height: 54.sp,width: 54.sp,fit: BoxFit.cover,)
                                  );
                                }),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.sp),
              child: Row(
                children: [

                  Expanded(
                    child: CustomButton(
                      btnColor: Colors.transparent,
                      border: Border.all(
                        color: kPrimaryColor
                      ),
                      btnText: "\$50.00",
                      textStyle: CustomTextStyle.semiBoldFont16Style,
                    ),
                  ),

                  SizedBox(width: 8.sp,),

                  Expanded(
                    flex: 2,
                    child: CustomButton(
                      onTap: () {
                        TabHomeRoute.goToJobConfirmedPage(context);
                      },
                      btnText: "Confirm",
                      textStyle: CustomTextStyle.semiBoldFont16Style.copyWith(color: kBlackColor),
                    ),
                  )
                ],
              ),
            ),

            SizedBox(height: 30.sp,)
          ],
        ),
      ),
    );
  }
}
