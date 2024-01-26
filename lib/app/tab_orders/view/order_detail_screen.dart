import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobisto/app/tab/view_model/dashboard_provider.dart';
import 'package:jobisto/app/tab_orders/common_component/common_profile_component.dart';
import 'package:jobisto/app/tab_orders/common_component/custom_job_app_bar.dart';
import 'package:jobisto/app/tab_orders/route/order_route.dart';
import 'package:jobisto/base/base.dart';
import 'package:jobisto/base/common_components/custom/acc_and_rej_custom_botton.dart';
import 'package:jobisto/base/common_components/custom/custom_background.dart';
import 'package:jobisto/base/common_components/custom/read_more_text_widget.dart';
import 'package:jobisto/utils/utils.dart';
import 'package:provider/provider.dart';

import '../../../base/common_components/custom/custom_button.dart';
import '../../../base/common_components/custom/custom_message_button.dart';
import '../../../utils/common_utils/enums.dart';
import '../../tab/route/tab_route.dart';
import '../domain/dummy_models/plumbing_request_model.dart';
import '../domain/dummy_models/skilles_model.dart';
class OrderDetailScreen extends StatefulWidget {
  const OrderDetailScreen({Key? key}) : super(key: key);

  @override
  State<OrderDetailScreen> createState() => _OrderDetailScreenState();
}

class _OrderDetailScreenState extends State<OrderDetailScreen> {

  TextEditingController descriptionController = TextEditingController();


  void showRatingsBottomSheet(BuildContext context)async{

    final isKeyboardOpen = MediaQuery.of(context).viewInsets.bottom;
    final tabProvider = context.read<TabIndexProvider>();

    showModalBottomSheet(
      context: context,
       isScrollControlled: true,
       backgroundColor: kBackgroundColor,
      builder: (context) {
      return Padding(
        padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom,left: 20.sp,right: 20.sp,top: 35.sp),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 20.sp,
                    width: 20.sp,
                  ),
                  Text("Ratings",style: CustomTextStyle.primaryTextColorFont20W600,),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: SizedBox(
                        width: 30.sp,
                        height: 30.sp,
                        child: ImageUtil.iconImageClass.cancelIcon),
                  )
                ],
              ),
              SizedBox(height: 33.sp),
              GestureDetector(
                onTap: () {
                  TabOrderRoute.goToJobberProfilePage(context,JobsServiceData(
                    statustype: STATUSTYPE.COMPLETED
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
                color: kLightGrayColor,
                height: 1.sp,
              ),
              SizedBox(height: 30.sp),
              Text("Share your thoughts on the service you received and help others find reliable professionals",
                textAlign: TextAlign.center,
                style: CustomTextStyle.primaryTextColorFont14W300,),
              SizedBox(height: 6.sp),
              Text("(Seller will be able to view these ratings after 2 - 3 weeks)", style: CustomTextStyle.primaryTextColorFont14W300,),
              SizedBox(height: 29.sp),
              Center(
                child: SizedBox(
                  height: 49.sp,
                  child: ImageUtil.dummyImgClass.fiveStars,
                ),
              ),
              SizedBox(height: 29.sp),
              Text("Share your thoughts",style: CustomTextStyle.primaryTextColorFont14W400,),
              SizedBox(height: 8.sp),
              CustomDescriptionTextField(
                  minLine: 3,
                  maxLine: 4,
                  controller: descriptionController, hint: "thoughts"),
              SizedBox(height: 45.sp),
              CustomButton(
                onTap: () {
                  tabProvider.tabChangeIndex(index: 2);
                  TabRoute.goToTabPage(context);

                },
                btnText: "Submit",
                btnColor: kPrimaryColor,
                textStyle: CustomTextStyle.primaryTextColorFont16W600.copyWith(
                  color: kBlackColor
                ),
              ),
              SizedBox(height: 20.sp),
            ],
          ),
        ),
      );
      },
    );

  }


  @override
  Widget build(BuildContext context) {
    final jobsServiceData = ModalRoute.of(context)?.settings.arguments as JobsServiceData;


    print("jobsServiceData.statustype is ${jobsServiceData.statustype}");
    return SafeArea(
      bottom: false,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: kBlackColor,
        appBar: CustomJabAppbar(
          height: 226.sp,
          image: SvgPicture.asset(jobsServiceData.image ?? ""),
          actionIcon: jobsServiceData.jobstype == JOBSTYPE.BUSINESS ?  ImageUtil.iconImageClass.edit : null,
          text1: jobsServiceData.text1,
          text2: jobsServiceData.text2,
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
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(child: Text(jobsServiceData.category ?? "",style: CustomTextStyle.primaryTextColorFont22W600,)),
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
                                 TabOrderRoute.goToJobberProfilePage(context,JobsServiceData(
                                   jobstype: JOBSTYPE.BUSINESS
                                 ));
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
                    onTap: () {
                      showRatingsBottomSheet(context);

                    },
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
