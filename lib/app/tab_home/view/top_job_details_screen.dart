import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobisto/app/tab_home/components/residential_plumbing_component.dart';
import 'package:jobisto/app/tab_home/route/home_route.dart';
import 'package:jobisto/app/tab_orders/common_component/custom_job_app_bar.dart';
import 'package:jobisto/base/common_components/custom/custom_background.dart';
import 'package:jobisto/utils/utils.dart';

import '../../tab_orders/domain/dummy_models/services_list_model.dart';
import '../domain/dummy_models/jobs_model.dart';

class TopJobDetailsScreen extends StatefulWidget {
  const TopJobDetailsScreen({super.key});

  @override
  State<TopJobDetailsScreen> createState() => _TopJobDetailsScreenState();
}

class _TopJobDetailsScreenState extends State<TopJobDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: CustomJabAppbar(
          height: 226.sp,
          image: ImageUtil.iconImageClass.plumbingProfileIcon,
        ),
        body: CustomBackGround(
          childBody: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              
                  SizedBox(
                    height: 25.sp,
                  ),
              
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.sp),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                            child: Text(
                          "Plumbing",
                          style: CustomTextStyle.semiBoldFont20Style,
                        )),
                        Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 6.sp, horizontal: 12.sp),
                            decoration: BoxDecoration(
                              color: kPrimaryColor,
                              borderRadius: BorderRadius.circular(60.sp),
                            ),
                            child: Text(
                              "service",
                              style: CustomTextStyle.regularFont16Style
                                  .copyWith(color: kBlackColor),
                            ))
                      ],
                    ),
                  ),
              
                  Padding(
                    padding:
                        EdgeInsets.only(left: 20.sp, top: 6.sp, bottom: 25.sp),
                    child: Text(
                      "400 bookings",
                      style: CustomTextStyle.lightFont14Style,
                    ),
                  ),
              
                  Container(
                    padding: EdgeInsets.only(left: 12),
                    height: 108.sp,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: JobsClass.topJobsSubList.length,
                      itemBuilder: (context, index) {
                        final topJobsSubData = JobsClass.topJobsSubList[index];
                        return Container(
                          margin: EdgeInsets.only(right: 12.sp),
                          padding: EdgeInsets.symmetric(horizontal: 10.sp),
                          decoration: BoxDecoration(
                            color: kLightGrayColor.withOpacity(0.16),
                            borderRadius: BorderRadius.circular(10.sp),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 12.sp),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  height: 32.sp,
                                  width: 32.sp,
                                  child: SvgPicture.asset(
                                      "$iconPath${topJobsSubData.icon}"),
                                ),
                                Text(
                                  topJobsSubData.text ?? "",
                                  style: CustomTextStyle.regularFont14Style,
                                  textAlign: TextAlign.center,
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
              
                  SizedBox(height: 30.sp,),
              
                  Padding(
                    padding: EdgeInsets.only(left: 20.sp,bottom: 16.sp),
                    child: Text("Residential Plumbing",style: CustomTextStyle.semiBoldFont20Style,
                    )),
              
              
                  ListView.builder(
                    padding: EdgeInsets.symmetric(horizontal: 20.sp,vertical: 15.sp),
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: ServiceListData.residentialPlumbingData.length,
                    itemBuilder: (context, index) {
                      final plumbingData = ServiceListData.residentialPlumbingData[index];
                      return GestureDetector(
                        onTap: () {
                          TabHomeRoute.goToBookServiceDetailsPage(context);
                        },
                        child: TopJobDetailsComponent(
                          service: plumbingData,
                          index: index,
                        ),
                      );
                    },
                  ),

                  SizedBox(height: 20.sp,),

                  Padding(
                      padding: EdgeInsets.only(left: 20.sp,bottom: 16.sp),
                      child: Text("Residential Plumbing",style: CustomTextStyle.semiBoldFont20Style,
                      )),

                  ListView.builder(
                    padding: EdgeInsets.symmetric(horizontal: 20.sp,vertical: 15.sp),
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: ServiceListData.residentialPlumbingData.length,
                    itemBuilder: (context, index) {
                      final plumbingData = ServiceListData.residentialPlumbingData[index];
                      return GestureDetector(
                        onTap: () {
                          TabHomeRoute.goToBookServiceDetailsPage(context);
                        },
                        child: TopJobDetailsComponent(
                          service: plumbingData,
                          index: index,
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
