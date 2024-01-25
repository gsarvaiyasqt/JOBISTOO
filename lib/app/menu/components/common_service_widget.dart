import 'package:flutter/cupertino.dart';
import 'package:jobisto/utils/utils.dart';

import '../../tab_orders/domain/dummy_models/services_list_model.dart';

class CommonServiceWidget extends StatefulWidget {

  final ServiceListData? service;
  final int? index;
  const CommonServiceWidget({super.key,this.service, this.index});

  @override
  State<CommonServiceWidget> createState() => _CommonServiceWidgetState();
}

class _CommonServiceWidgetState extends State<CommonServiceWidget> {
  @override
  Widget build(BuildContext context) {
    final notSelectedItem = (ServiceListData.serviceListData.length - 1) != widget.index;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12.sp),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.sp)
                ),
                  height: 100.sp,
                  width: 120.sp,
                  child: Image.asset(widget.service?.image ?? "",fit: BoxFit.fitWidth)
              ),
            ),
            SizedBox(width: 10.sp),
            Expanded(child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(child: Text(widget.service?.serTitle ?? "",style: CustomTextStyle.semiBoldFont16Style)),
                    ImageUtil.iconImageClass.threeDotIcon,
                  ],
                ),
                SizedBox(height: 8.sp),
                Text("\$${widget.service?.count}" ?? "",style: CustomTextStyle.secondaryTextColorFont14W600),
                SizedBox(height: 8.sp),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(child: Text(widget.service?.serText ?? "",style: CustomTextStyle.primaryTextColorFont14W300)),
                    ImageUtil.iconImageClass.crossArrowIcon,
                  ],
                ),
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
