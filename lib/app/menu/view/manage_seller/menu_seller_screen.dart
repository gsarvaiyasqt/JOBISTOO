import 'package:flutter/material.dart';
import 'package:jobisto/app/menu/route/menu_route.dart';
import 'package:jobisto/utils/utils.dart';

import '../../../../base/common_components/custom/custom_background.dart';
import '../../components/common_appbar.dart';

class MenuSellerScreen extends StatefulWidget {
  const MenuSellerScreen({super.key});

  @override
  State<MenuSellerScreen> createState() => _MenuSellerScreenState();
}

class _MenuSellerScreenState extends State<MenuSellerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        body: CustomBackGround(
          childBody: Padding(
            padding:EdgeInsets.only(left: 20.sp,right: 20.sp,bottom: MediaQuery.of(context).padding.bottom + 50.sp),
            child: Column(
              children: [

                CommonAppBar(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  centerText: "Seller",
                ),

                Padding(
                  padding:  EdgeInsets.only(top: 20.sp),
                  child: Column(
                    children: [
                      Row(
                        children: [

                          Expanded(
                            child: InkWell(
                              onTap: (){
                                MenuRoute.goToMyJobistoPage(context);
                              },
                              child: Container(
                                height: 250.sp,
                                decoration: BoxDecoration(
                                  border: Border.all(color:kLightGrayColor),
                                  borderRadius: BorderRadius.circular(10.sp)
                                ),
                                padding: EdgeInsets.all(12.sp),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,

                                  children: [
                                    Container(
                                      height: 54.sp,
                                        width: 54.sp,
                                        child: ImageUtil.iconImageClass.profileIcon),

                                    SizedBox(height: 10.sp),

                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("Jobber Profile",style: CustomTextStyle.regularFont18Style),

                                          SizedBox(height: 5.sp),

                                          Text("Sell a skill, product or service",style: CustomTextStyle.regularFont14Style),
                                        ],
                                      ),
                                    ),

                                    Row(
                                      children: [
                                        Align(
                                          alignment: Alignment.bottomRight,
                                            child: ImageUtil.iconImageClass.crossArrowIcon
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),

                          SizedBox(width: 10.sp),

                          Expanded(
                            child: Column(
                              children: [
                                InkWell(
                                  onTap: (){
                                    MenuRoute.goToMyServicePage(context);
                                  },
                                  child: Container(
                                    height: 120.sp,
                                    width: double.infinity,
                                    padding: EdgeInsets.only(left: 10.sp,right: 10.sp,top: 8.sp),
                                    decoration: BoxDecoration(
                                        color: kLightGrayColor.withOpacity(0.16),
                                        borderRadius: BorderRadius.circular(10.sp)
                                    ),
                                    child: Column(
                                      children: [
                                        Align(
                                          alignment: Alignment.bottomRight,
                                          child: Container(
                                              height: 35.sp,
                                              width: 35.sp,
                                              child: ImageUtil.iconImageClass.serviceIcon
                                          ),
                                        ),

                                        Row(
                                          children: [
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text("5",style: CustomTextStyle.semiBoldFont20Style.copyWith(fontSize: 30.sp,color: kPrimaryColor)),
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      Expanded(child: Text("Services", style: CustomTextStyle.regularFont18Style)),

                                                      ImageUtil.iconImageClass.crossArrowIcon,
                                                    ],
                                                  )
                                                ],
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),

                                SizedBox(height: 10.sp),

                                InkWell(
                                  onTap: (){
                                    MenuRoute.goToMyDoneJobsPage(context);
                                  },
                                  child: Container(
                                    height: 120.sp,
                                    width: double.infinity,
                                    padding: EdgeInsets.only(left: 10.sp,right: 10.sp,top: 8.sp),
                                    decoration: BoxDecoration(
                                        color: kLightGrayColor.withOpacity(0.16),
                                        borderRadius: BorderRadius.circular(10.sp)
                                    ),
                                    child: Column(
                                      children: [
                                        Align(
                                          alignment: Alignment.bottomRight,
                                          child: Container(
                                              height: 35.sp,
                                              width: 35.sp,
                                              child: ImageUtil.iconImageClass.portfolioIcon
                                          ),
                                        ),

                                        Row(
                                          children: [
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text("2",style: CustomTextStyle.semiBoldFont20Style.copyWith(fontSize: 30.sp,color: kPrimaryColor)),
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      Expanded(child: Text("Portfolio", style: CustomTextStyle.regularFont18Style)),

                                                      ImageUtil.iconImageClass.crossArrowIcon,
                                                    ],
                                                  )
                                                ],
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}
