import 'package:flutter/material.dart';
import 'package:jobisto/app/tab_home/domain/dummy_models/jobs_model.dart';
import 'package:jobisto/utils/utils.dart';

class CustomMostBookJobsList extends StatefulWidget {
  final String? icon;
  final String? name;
  const CustomMostBookJobsList({super.key, this.icon, this.name});

  @override
  State<CustomMostBookJobsList> createState() => _CustomMostBookJobsListState();
}

class _CustomMostBookJobsListState extends State<CustomMostBookJobsList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 12.sp),
      child: Column(

        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          ClipRRect(
            borderRadius: BorderRadius.circular(10.sp),
            child: Image.asset("$dummyImgPath${widget.icon}",height: 92.sp,width: 150.sp,fit: BoxFit.cover,),
          ),

          SizedBox(height: 5.sp,),

          Text(widget.name ?? "",style: CustomTextStyle.regularFont14Style)
        ],
      ),
    );
  }
}
