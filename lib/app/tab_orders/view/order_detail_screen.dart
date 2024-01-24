import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobisto/app/tab_orders/common_component/common_profile_component.dart';
import 'package:jobisto/app/tab_orders/common_component/custom_job_app_bar.dart';
import 'package:jobisto/app/tab_orders/route/order_route.dart';
import 'package:jobisto/base/common_components/custom/custom_background.dart';
import 'package:jobisto/base/common_components/custom/read_more_text_widget.dart';
import 'package:jobisto/utils/utils.dart';

import '../../../base/common_components/custom/custom_button.dart';
import '../../../base/common_components/custom/custom_message_button.dart';
import '../../../utils/common_utils/enums.dart';
import '../domain/dummy_models/plumbing_request_model.dart';
import '../domain/dummy_models/skilles_model.dart';
class OrderDetailScreen extends StatefulWidget {
  const OrderDetailScreen({Key? key}) : super(key: key);

  @override
  State<OrderDetailScreen> createState() => _OrderDetailScreenState();
}

class _OrderDetailScreenState extends State<OrderDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final jobsServiceData = ModalRoute.of(context)?.settings.arguments as JobsServiceData;


    print("jobsServiceData.statustype is ${jobsServiceData.statustype}");
    return SafeArea(
      bottom: false,
      child: Scaffold(
        backgroundColor: kBlackColor,
        appBar: CustomJabAppbar(
          height: 226.sp,
          image: ImageUtil.iconImageClass.plumbingProfileIcon,
          actionIcon: jobsServiceData.jobstype == JOBSTYPE.BUSINESS ?  ImageUtil.iconImageClass.edit : null,
        ),
        body: Stack(
          children: [
            SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.sp,vertical: 20.sp),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(child: Text("Plumbing",style: CustomTextStyle.primaryTextColorFont22W600,)),
                          if(jobsServiceData.statustype == STATUSTYPE.COMPLETED)
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                    height: 18.sp,width: 18.sp,
                                    child: ImageUtil.iconImageClass.completedIcon),
                                SizedBox(width: 8.sp),
                                Text(jobsServiceData.statustype?.title ?? "",style: CustomTextStyle.primaryTextColorFont14W400.copyWith(
                                  color: kLightGreenColor
                                ))
                              ],
                            ),
                          if(jobsServiceData.statustype == STATUSTYPE.PENDING)
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                    height: 15.sp,width: 18.sp,
                                    child: ImageUtil.iconImageClass.pendingClock),
                                SizedBox(width: 8.sp),
                                Text(jobsServiceData.statustype?.title ?? "",style: CustomTextStyle.primaryTextColorFont14W400.copyWith(
                                    color: kYellowColor
                                ))
                              ],
                            ),

                        ],
                      ),
                      SizedBox(height: 10.sp),
                      Text("\$50.00",style: CustomTextStyle.secondaryTextColorFont16W600),
                      SizedBox(height: 10.sp),
                      ReadMoreWidget(
                        moreTextStyle: CustomTextStyle.secondaryTextColorFont16W400,
                        lessTextStyle: CustomTextStyle.secondaryTextColorFont16W400,
                        textStyle: CustomTextStyle.secondaryTextColorFont16W400.copyWith(
                          color: kTextPrimaryColor
                        ),
                        text: "Lorem ipsum dolor sit amet consectetur. Dignissim ut amet lorem turpis diam. Phasellus netus neque tincidunt diam lectus ultrices porta et nunc.",
                      ),
                      if(jobsServiceData.statustype != null)
                        Column(
                          children: [
                            SizedBox(height: 24.sp),
                          Container(
                            height: 1.sp,
                            color: kLightGrayColor,
                          ),
                            SizedBox(height: 16.sp),
                            GestureDetector(
                              onTap: () {
                                TabOrderRoute.goToJobberProfilePage(context,JobsServiceData(
                                  statustype: jobsServiceData.statustype
                                ));
                              },
                              child: ProfileCommonComponent(
                                rating: "4.4",
                                profileName: "Rox Hardware",
                                icon: ImageUtil.dummyImgClass.profile11,
                                actionIcon: ImageUtil.iconImageClass.crossArrowIcon,
                              ),
                            ),
                            SizedBox(height: 16.sp),
                            Container(
                              height: 1.sp,
                              color: kLightGrayColor,
                            ),
                            SizedBox(height: 24.sp),
                          ],
                        ),
                      if(jobsServiceData.statustype != null)
                        Column(
                          children: [
                            SizedBox(height: 24.sp),
                            Row(
                              children: [
                              Expanded(child: Text("My Requirements",style: CustomTextStyle.primaryTextColorFont20W600,)),
                              if(jobsServiceData.statustype == STATUSTYPE.PENDING)
                              SizedBox(height: 24.sp,width: 24.sp,child: ImageUtil.iconImageClass.edit),
                              ],
                            ),
                            SizedBox(height: 24.sp),
                          ],
                        ),
                      Container(
                        padding: EdgeInsets.all(12.sp),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: kLightGrayColor.withOpacity(0.17),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if(jobsServiceData.jobstype != null)
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("JOB Detail",style: CustomTextStyle.primaryTextColorFont14W400,),
                                SizedBox(height: 8.sp),
                                Row(
                                  children: [
                                    Flexible(child: Text("Lorem ipsum dolor sit amet consectetur. Dignissim ut amet lorem turpis diam. Phasellus netus neque tincidunt diam lectus ultrices porta et nunc. ",style: CustomTextStyle.primaryTextColorFont14W300,)),
                                  ],
                                ),
                                SizedBox(height: 16.sp),
                                Container(
                                  height: 1.sp,
                                  color: kLightGrayColor.withOpacity(0.5),
                                ),
                                SizedBox(height: 16.sp),
                              ],
                            ),


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
                            if(jobsServiceData.jobstype == JOBSTYPE.BUSINESS)
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
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
                              ],
                            ),
                            Text("Expected Time",style: CustomTextStyle.primaryTextColorFont14W400,),
                            SizedBox(height: 8.sp),
                            Row(
                              children: [
                                Flexible(child: Text("2 Days",style: CustomTextStyle.primaryTextColorFont18W400,)),
                              ],
                            ),
                            if(jobsServiceData.statustype != null)
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 16.sp),
                                Container(
                                  height: 1.sp,
                                  color: kLightGrayColor.withOpacity(0.5),
                                ),
                                SizedBox(height: 16.sp),
                                Text("JOB Photos",style: CustomTextStyle.primaryTextColorFont14W400,),
                                SizedBox(height: 8.sp),
                                Wrap(
                                  spacing: 8.sp,
                                  runSpacing: 8.sp,
                                  children: List.generate(3, (index) => SizedBox(
                                      height: 54.sp,
                                      width: 54.sp,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset("$dummyImgPath/home_paint.png",fit: BoxFit.cover),
                                      ))),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      if(jobsServiceData.statustype == STATUSTYPE.PENDING)
                        SizedBox(height: 100.sp,),
                      SizedBox(height: 16.sp),
                     if(jobsServiceData.jobstype == JOBSTYPE.BUSINESS)
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Row(
                           children: [
                             SizedBox(
                               height: 24.sp,width: 24.sp,
                               child: ImageUtil.iconImageClass.termsAndConditionIcon,
                             ),
                             SizedBox(width: 8.sp),
                             Expanded(child: Text("Terms & Conditions",style: CustomTextStyle.secondaryTextColorFont16W400.copyWith(
                                 decoration: TextDecoration.underline,
                                 decorationColor: kTextSecondaryColor
                             )))
                           ],
                         ),
                         SizedBox(height: 32.sp),
                         Text.rich(TextSpan(
                             text: "Requests ",
                             style: CustomTextStyle.primaryTextColorFont20W600,
                             children: [
                               TextSpan(
                                   text: "(${PlumbingRequestModel.plumbingReqList.length})",
                                   style: CustomTextStyle.secondaryTextColorFont16W600
                               )
                             ]
                         )),
                         SizedBox(height: 16.sp),
                         ListView.builder(
                           shrinkWrap: true,
                           padding: EdgeInsets.only(bottom: 50.sp),
                           physics: const NeverScrollableScrollPhysics(),
                           itemCount: PlumbingRequestModel.plumbingReqList.length,
                           itemBuilder: (context, index) {
                             final plumbingItem =  PlumbingRequestModel.plumbingReqList[index];
                             return GestureDetector(
                               onTap: () {
                                 TabOrderRoute.goToJobberProfilePage(context);
                               },
                               child: Container(
                                 margin: EdgeInsets.only(top: 10.sp),
                                 padding: EdgeInsets.symmetric(vertical: 15.sp,horizontal: 12.sp),
                                 decoration: BoxDecoration(
                                   color: kLightGrayColor.withOpacity(0.16),
                                   borderRadius: BorderRadius.circular(10.sp),
                                 ),
                                 child: Row(
                                   children: [
                                     SizedBox(
                                         height: 24.sp,
                                         width: 24.sp,
                                         child: Image.asset("$dummyImgPath/${plumbingItem.imageUrl}")),
                                     SizedBox(width: 10.sp),
                                     Expanded(child: Text(plumbingItem.reqText ?? "",style: CustomTextStyle.primaryTextColorFont16W400,)),
                                     SizedBox(width: 10.sp),
                                     SizedBox(width: 24.sp,height: 24.sp,child: ImageUtil.iconImageClass.crossArrowIcon,)
                                   ],
                                 ),
                               ),
                             );
                           },)
                       ],
                     )
                    ],
                  ),
                ),
              ),
            ),

            if(jobsServiceData.statustype != null)
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Align(
                    alignment: Alignment.bottomRight,
                    child: GestureDetector(
                      onTap: () {
                        TabOrderRoute.goToJobTalkPage(context);
                      },
                      child: CustomMessageButton(
                        margin: EdgeInsets.only(bottom: jobsServiceData.statustype == STATUSTYPE.COMPLETED ?  55.sp : 87.sp,right: 20.sp),
                      ),
                    ),
                  ),
                ],
              ),


            if(jobsServiceData.statustype == STATUSTYPE.PENDING)
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.sp),
                  child: CustomButton(
                    btnColor: kPrimaryColor,
                    textStyle: CustomTextStyle.blackSemiBoldFont16Style,
                    btnText: "Complete JOB",
                  ),
                ),

                SizedBox(height: 15.sp),

              ],
            )
          ],
        ),

      ),
    );
  }
}
