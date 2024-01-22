import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobisto/app/tab_home/domain/dummy_models/jobs_model.dart';
import 'package:jobisto/utils/utils.dart';

class TopJobsCustomGrid extends StatefulWidget {
  const TopJobsCustomGrid({super.key});

  @override
  State<TopJobsCustomGrid> createState() => _TopJobsCustomGridState();
}

class _TopJobsCustomGridState extends State<TopJobsCustomGrid> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
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
        final jobs = JobsClass.jobsList[index];
        return Container(
          // margin: EdgeInsets.all(12.sp),
          decoration: BoxDecoration(
            color: kLightGrayColor.withOpacity(0.16),
            // color: Colors.red,
            borderRadius: BorderRadius.circular(10.sp),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 12.sp),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 32.sp,
                  width: 32.sp,
                  child: SvgPicture.asset("$iconPath${jobs.icon}"),
                ),
                SizedBox(height: 14.sp,),

                Text(jobs.text ?? "",style: CustomTextStyle.regularFont14Style,)
              ],
            ),
          ),
        );
      },
    );
  }
}

