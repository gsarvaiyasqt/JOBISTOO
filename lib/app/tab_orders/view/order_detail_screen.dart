import 'package:flutter/material.dart';
import 'package:jobisto/app/tab_orders/common_component/custom_job_app_bar.dart';
import 'package:jobisto/base/common_components/custom/custom_background.dart';
import 'package:jobisto/base/common_components/custom/read_more_text_widget.dart';
import 'package:jobisto/utils/utils.dart';

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
    return SafeArea(
      bottom: false,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: kBlackColor,
        appBar: CustomJabAppbar(
          height: 226.sp,
          actionIcon: ImageUtil.iconImageClass.edit,
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.sp,vertical: 20.sp),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Plumbing",style: CustomTextStyle.primaryTextColorFont22W600,),
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
                  SizedBox(height: 24.sp),
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
                            Flexible(child: Text("2 Days",style: CustomTextStyle.primaryTextColorFont18W400,)),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16.sp),
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
                    itemCount: PlumbingRequestModel.plumbingReqList.length,
                    itemBuilder: (context, index) {
                      
                      final plumbingItem =  PlumbingRequestModel.plumbingReqList[index];
                      return Container(
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
                    );
                  },)
                ],
              ),
            ),
          ),
        )
      ),
    );
  }
}
