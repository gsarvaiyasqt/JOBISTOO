import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobisto/app/tab_home/components/most_book_jobs_list.dart';
import 'package:jobisto/app/tab_home/components/quick_home_repairs_list.dart';
import 'package:jobisto/app/tab_home/components/top_jobs_custom_grid.dart';
import 'package:jobisto/base/common_components/custom/custom_background.dart';
import 'package:jobisto/base/common_components/custom/custom_info_title.dart';
import 'package:jobisto/utils/utils.dart';

import '../domain/dummy_models/jobs_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    print(4.88 * MediaQuery.of(context).size.height,);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title:  Container(
          decoration: BoxDecoration(

          ),
          child: Row(
            children: [

              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(
                      color: kTabColor
                    ),
                    borderRadius: BorderRadius.circular(50.sp)
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.sp,horizontal: 20.sp),
                    child: Row(
                      children: [

                        SizedBox(
                          height: 18.sp,
                          width: 16.sp,
                          child: ImageUtil.iconImageClass.locationIcon,
                        ),

                        SizedBox(width: 8.sp,),

                        Text("Nairobi, Kenya",style: CustomTextStyle.lightTextFieldStyle,),
                      ],
                    ),
                  ),
                ),
              ),

              SizedBox(width: 10.sp,),

              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: kTabColor
                  ),
                  borderRadius: BorderRadius.circular(50.sp)
                ),
                padding: EdgeInsets.symmetric(horizontal: 16.sp,vertical: 8.sp),
                child: SizedBox(
                  height: 24.sp,
                  width: 24.sp,
                  child: ImageUtil.iconImageClass.searchIcon,
                ),
              )
            ],
          ),
        ),
      ),
      body: CustomBackGround(
        childBody: SafeArea(
          bottom: false,
          // top: false,
          child: SingleChildScrollView(
            child: Column(
              children: [

                SizedBox(height: 12.sp,),
            
                Container(
                  height: 140.sp,
                  child: ListView.builder(
                    padding: EdgeInsets.symmetric(horizontal: 20.sp),
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(right: 10.sp),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.sp),
                          child: SizedBox(
                            child: ImageUtil.dummyImgClass.slideImage,
                          ),
                        ),
                      );
                    },),
                ),
            
                SizedBox(height: 30.sp,),
            
                CustomInfoTitle(
                  firstText: "Top JOBs",
                  secondText: "See All",
                ),

            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 15.sp,
                  mainAxisSpacing: 10.sp,
                  childAspectRatio: 1.3
              ),
              padding: EdgeInsets.symmetric(horizontal: 20.sp,vertical: 15.sp),
              itemCount: JobsClass.jobsList.length,
              itemBuilder: (context, index) {
                final jobsData = JobsClass.jobsList[index];
                return TopJobsCustomGrid(
                 jobsData: jobsData,
                );
              },
            ),
            
                SizedBox(height: 15.sp,),
            
                CustomInfoTitle(
                  firstText: "Most Booked JOBs",
                  secondText: "See All",
                ),
            
                SizedBox(height: 15.sp,),

                Container(
                  height: 144.sp,
                  child: ListView.builder(
                    padding: EdgeInsets.only(left: 20.sp),
                    scrollDirection: Axis.horizontal,
                    itemCount: JobsClass.mostBookedJobList.length,
                    itemBuilder: (context, index) {
                      final mostBookedJobs = JobsClass.mostBookedJobList[index];
                      return CustomMostBookJobsList(
                        icon: mostBookedJobs.icon,
                        name: mostBookedJobs.text,
                      );
                    },),
                ),
            
                SizedBox(height: 30.sp,),
            
                CustomInfoTitle(
                  firstText: "Quick Home Repairs",
                  secondText: "See All",
                ),
            
                SizedBox(height: 12.sp,),

                Container(
              padding: EdgeInsets.only(left: 12),
              height: 145.sp,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: JobsClass.quickHomeRepairs.length,
                itemBuilder: (context, index) {
                  final mostBookedJobs = JobsClass.quickHomeRepairs[index];
                  return CustomQuickHomeRepairsList(
                    icon: mostBookedJobs.icon,
                    text: mostBookedJobs.text,
                  );
                },),
            ),
            
                SizedBox(height: 90.sp,)
            
              ],
            ),
          ),
        ),
      ),
    );
  }
}
