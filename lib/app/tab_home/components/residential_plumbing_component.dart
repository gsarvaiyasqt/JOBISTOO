import 'package:flutter/material.dart';

import 'package:jobisto/utils/utils.dart';
import '../../tab_orders/domain/dummy_models/services_list_model.dart';

class TopJobDetailsComponent extends StatelessWidget {
  final ServiceListData? service;
  final int? index;
  const TopJobDetailsComponent({Key? key, this.service, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final notSelectedItem = (ServiceListData.residentialPlumbingData.length - 1) != index;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
                height: 100.sp,
                width: 120.sp,
                child: Image.asset(service?.image ?? "",fit: BoxFit.contain)),
            SizedBox(width: 10.sp),
            Expanded(child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(service?.serTitle ?? "",style: CustomTextStyle.regularFont16Style),
                SizedBox(height: 8.sp),
                Text(service?.serText ?? "",style: CustomTextStyle.lightFont14Style),
                SizedBox(height: 8.sp,),
                Row(
                  children: [
                    SizedBox(
                      height: 20.sp,
                      width: 20.sp,
                      child: ImageUtil.iconImageClass.profileIcon,
                    ),

                    SizedBox(width: 5.sp,),

                    Expanded(child: Text("${service?.jobberCount ?? ""} Jobber",style: CustomTextStyle.regularFont14Style,)),
                    SizedBox(
                      height: 24.sp,
                      width: 24.sp,
                      child: ImageUtil.iconImageClass.crossArrowIcon,
                    ),
                  ],
                )
              ],
            ))
          ],
        ),
        if(notSelectedItem)
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 20.sp),
              Container(
                height: 1.sp,
                color: kLightGrayColor,
              ),
              SizedBox(height: 20.sp),
            ],
          )


      ],
    );
  }
}
