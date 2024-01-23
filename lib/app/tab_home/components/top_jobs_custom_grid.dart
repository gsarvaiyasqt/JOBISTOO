import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobisto/app/tab_home/domain/dummy_models/jobs_model.dart';
import 'package:jobisto/utils/utils.dart';

class TopJobsCustomGrid extends StatefulWidget {
  final String? icon;
  final String? name;
  const TopJobsCustomGrid({super.key, this.icon, this.name});

  @override
  State<TopJobsCustomGrid> createState() => _TopJobsCustomGridState();
}

class _TopJobsCustomGridState extends State<TopJobsCustomGrid> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      // margin: EdgeInsets.all(12.sp),
      decoration: BoxDecoration(
        color: kLightGrayColor.withOpacity(0.16),
        // color: Colors.red,
        borderRadius: BorderRadius.circular(10.sp),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 12.sp),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 32.sp,
              width: 32.sp,
              child: SvgPicture.asset("$iconPath${widget.icon}"),
            ),


            Text(widget.name ?? "",style: CustomTextStyle.regularFont14Style,)
          ],
        ),
      ),
    );;
  }
}

