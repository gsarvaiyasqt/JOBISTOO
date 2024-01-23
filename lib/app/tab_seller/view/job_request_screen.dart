import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobisto/app/tab_seller/components/services_list.dart';
import 'package:jobisto/base/common_components/custom/custom_appbar_prefix_icon.dart';
import 'package:jobisto/base/common_components/custom/custom_background.dart';
import 'package:jobisto/base/common_components/custom/custom_button.dart';
import 'package:jobisto/base/common_components/custom/custom_message_button.dart';
import 'package:jobisto/utils/utils.dart';

import '../domain/dummy_models/job_request_model.dart';

class JobRequestScreen extends StatefulWidget {
  const JobRequestScreen({super.key});

  @override
  State<JobRequestScreen> createState() => _JobRequestScreenState();
}

class _JobRequestScreenState extends State<JobRequestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        leadingWidth: 76.sp,
        leading: const CustomAppbarPrefixIcon(),
        title: Text("JOB Request",style: CustomTextStyle.semiBoldFont20Style,),
        automaticallyImplyLeading: false,
      ),
      body: CustomBackGround(
        childBody: Stack(
          alignment: Alignment.bottomRight,
          children: [

            SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.sp),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Row(
                        children: [

                          Container(
                            height: 64.sp,
                            width: 64.sp,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: kSecondaryColor
                              )
                            ),
                            child: ImageUtil.dummyImgClass.profilePic,
                          ),

                          SizedBox(width: 20.sp,),

                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Jabari Osei",style: CustomTextStyle.regularFont18Style,),

                                Row(
                                  children: [

                                    SizedBox(
                                      height: 18.sp,
                                      width: 18.sp,
                                      child: ImageUtil.iconImageClass.locationIcon,
                                    ),

                                    Text("Nairobi, Kenya",style: CustomTextStyle.regularFont14Style,)
                                  ],
                                )
                              ],
                            ),
                          ),

                          SizedBox(
                              height: 18.sp,
                              width: 18.sp,
                              child: ImageUtil.iconImageClass.pendingClock),

                          SizedBox(width: 6.sp,),

                          Text("Pending",style: CustomTextStyle.yellowSemiBoldFont14Style.copyWith(color: const Color(0xffF9A600)),)
                        ],
                      ),

                      SizedBox(height: 24.sp,),

                      Row(
                        children: [
                          Expanded(child: Text("Services (2)",style: CustomTextStyle.semiBoldFont20Style,)),

                          SizedBox(
                              height: 24.sp,
                              width: 24.sp,
                              child: ImageUtil.iconImageClass.crossArrowIconMain)
                        ],
                      ),

                      SizedBox(height: 15.sp,),

                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: ServiceClass.serviceList.length,
                        itemBuilder: (context, index) {
                          final serviceList = ServiceClass.serviceList[index];
                        return  ServicesList(
                          price: serviceList.price.toString() ??  "-",
                          description: serviceList.description,
                          serviceName: serviceList.serviceName,
                          image: serviceList.img,
                          totalLength: ServiceClass.serviceList,
                          index: index,
                        );
                      },),

                      SizedBox(
                        height: 30.sp,
                      ),

                      Row(
                        children: [

                          Expanded(child: Text("Product (1)",style: CustomTextStyle.semiBoldFont20Style,)),

                          SizedBox(
                            height: 24.sp,
                            width: 24.sp,
                            child: ImageUtil.iconImageClass.crossArrowIconMain,
                          )
                        ],
                      ),

                      SizedBox(
                        height: 30.sp,
                      ),

                      Text("Client Requirements",style: CustomTextStyle.semiBoldFont20Style,),

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

                      SizedBox(
                        height: 100.sp,
                      )
                    ],
                  ),
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.sp),
              height: 100.sp,
              child: Row(
                children: [

                  Expanded(
                    child: SizedBox(
                      height: 54,
                      child: CustomButton(
                        btnColor: kLightGrayColor,
                        btnText: "Reject",
                        textStyle: CustomTextStyle.semiBoldFont16Style,
                      ),
                    ),
                  ),

                  SizedBox(width: 8.sp,),

                  Expanded(
                    child: SizedBox(
                      height: 54,
                      child: CustomButton(
                        btnColor: kPrimaryColor,
                        btnText: "Accept",
                        textStyle: CustomTextStyle.semiBoldFont16Style.copyWith(color: Colors.black),
                      ),
                    ),
                  )
                ],
              ),
            ),

            CustomMessageButton(
              margin: EdgeInsets.only(
                bottom: 100.sp,
                right: 20.sp
              ),
            )
          ],
        ),
      ),
    );
  }
}
