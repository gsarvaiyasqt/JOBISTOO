import 'package:flutter/material.dart';
import 'package:jobisto/app/tab_home/domain/dummy_models/jobs_model.dart';
import 'package:jobisto/utils/utils.dart';

class CustomQuickHomeRepairsList extends StatefulWidget {
  final String? icon;
  final String? text;
  const CustomQuickHomeRepairsList({super.key, this.icon, this.text});

  @override
  State<CustomQuickHomeRepairsList> createState() => _CustomQuickHomeRepairsListState();
}

class _CustomQuickHomeRepairsListState extends State<CustomQuickHomeRepairsList> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.only(right: 12.sp),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          ClipRRect(
            borderRadius: BorderRadius.circular(10.sp),
            child: Image.asset("$dummyImgPath${widget.icon}",height: 92.sp,width: 150.sp,fit: BoxFit.cover,),
          ),

          SizedBox(height: 5.sp,),

          Text(widget.text ?? "",style: CustomTextStyle.regularFont14Style)
        ],
      ),
    );
  }
}
