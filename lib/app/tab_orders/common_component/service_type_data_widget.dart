import 'package:flutter/material.dart';
import 'package:jobisto/utils/utils.dart';

import '../domain/dummy_models/services_list_model.dart';
class ServiceTypeDataWidget extends StatelessWidget {
  final ServiceListData? service;
  final int? index;
  const ServiceTypeDataWidget({Key? key, this.service, this.index}) : super(key: key);

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
                height: 122.sp,
                width: 120.sp,
                child: Image.asset(service?.image ?? "",fit: BoxFit.contain)),
            SizedBox(width: 10.sp),
            Expanded(child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(service?.serTitle ?? "",style: CustomTextStyle.primaryTextColorFont16W600),
                SizedBox(height: 8.sp),
                Text("\$${service?.count}" ?? "",style: CustomTextStyle.secondaryTextColorFont14W600),
                SizedBox(height: 8.sp),
                Text(service?.serText ?? "",style: CustomTextStyle.primaryTextColorFont14W300),
                SizedBox(height: 8.sp,),
                Align(
                  alignment: Alignment.centerRight,
                  child: SizedBox(
                    height: 24.sp,
                    width: 24.sp,
                    child: ImageUtil.iconImageClass.crossArrowIconMain,
                  ),
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
