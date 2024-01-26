import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobisto/app/tab_home/components/booking_service_list_component.dart';
import 'package:jobisto/app/tab_home/domain/dummy_models/booker_service_model.dart';
import 'package:jobisto/app/tab_home/route/home_route.dart';
import 'package:jobisto/app/tab_orders/domain/dummy_models/skilles_model.dart';
import 'package:jobisto/base/common_components/custom/custom_appbar_prefix_icon.dart';
import 'package:jobisto/base/common_components/custom/custom_background.dart';
import 'package:jobisto/base/common_components/custom/custom_button.dart';
import 'package:jobisto/utils/utils.dart';

class BookServiceScreen extends StatefulWidget {
  const BookServiceScreen({super.key});

  @override
  State<BookServiceScreen> createState() => _BookServiceScreenState();
}

class _BookServiceScreenState extends State<BookServiceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: CustomAppbarPrefixIcon(),
        leadingWidth: 76.sp,
        centerTitle: true,
        title: Text(
          "Plumbing",
          style: CustomTextStyle.semiBoldFont20Style,
        ),
        actions: [
          Container(
            height: 40.sp,
            width: 56.sp,
            padding: EdgeInsets.symmetric(horizontal: 16.sp, vertical: 8.sp),
            margin: EdgeInsets.only(right: 20.sp),
            decoration: BoxDecoration(
                border: Border.all(color: kLightGrayColor),
                borderRadius: BorderRadius.circular(50.sp)),
            child: SizedBox(
              height: 24.sp,
              width: 24.sp,
              child: ImageUtil.iconImageClass.searchIcon,
            ),
          )
        ],
      ),
      body: CustomBackGround(
        childBody: SafeArea(
          child: Column(
            children: [
          
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.sp),
                  child: Column(
                    children: [
                      Expanded(
                        child: ListView.builder(
                          itemCount: bookServiceList.length,
                          itemBuilder: (context, index) {
                            final listData = bookServiceList[index];
                            return GestureDetector(
                              onTap: () {
                                TabHomeRoute.goToMyJobistoProfilePage(context);
                              },
                              child: BookingServiceListComponent(
                                bookServiceData: listData,
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 58.sp),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 1.sp,
                        width: 1,
                        color: kLightGrayColor,
                      ),
                    ),
                    
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.sp),
                      child: Text("Can’t Decide",style: CustomTextStyle.regularFont12Style,),
                    ),
          
                    Expanded(
                      child: Container(
                        height: 1.sp,
                        width: 1,
                        color: kLightGrayColor,
                      ),
                    ),
                  ],
                ),
              ),
          
              SizedBox(height: 30.sp,),
              
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.sp),
                child: CustomButton(
                  onTap: () {
                    TabHomeRoute.goToCreateJobPage(context);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 24.sp,
                        width: 24.sp,
                        child:  SvgPicture.asset("$iconPath/add.svg",colorFilter: ColorFilter.mode(kBlackColor,BlendMode.srcIn)),
                      ),
          
                      SizedBox(width: 10.sp,),
          
                      Text("Create JOB",style: CustomTextStyle.semiBoldFont16Style.copyWith(color: kBlackColor),),
          
                    ],
                  ),
                ),
              ),
          
              SizedBox(height: 30.sp,)
          
            ],
          ),
        ),
      ),
    );
  }
}
