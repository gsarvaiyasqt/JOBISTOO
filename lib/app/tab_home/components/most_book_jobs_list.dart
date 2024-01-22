import 'package:flutter/material.dart';
import 'package:jobisto/app/tab_home/domain/dummy_models/jobs_model.dart';
import 'package:jobisto/utils/utils.dart';

class CustomMostBookJobsList extends StatefulWidget {
  const CustomMostBookJobsList({super.key});

  @override
  State<CustomMostBookJobsList> createState() => _CustomMostBookJobsListState();
}

class _CustomMostBookJobsListState extends State<CustomMostBookJobsList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 12),
      height: 145.sp,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: JobsClass.mostBookedJobList.length,
        itemBuilder: (context, index) {
          final mostBookedJobs = JobsClass.mostBookedJobList[index];
          return Padding(
            padding: EdgeInsets.only(right: 12.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                ClipRRect(
                  borderRadius: BorderRadius.circular(10.sp),
                  child: Image.asset("$dummyImgPath${mostBookedJobs.icon}",height: 92.sp,width: 150.sp,fit: BoxFit.cover,),
                ),

                SizedBox(height: 12.sp,),

                Text(mostBookedJobs.text ?? "",style: CustomTextStyle.regularFont14Style)
              ],
            ),
          );
        },),
    );
  }
}
