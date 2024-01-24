import 'package:flutter/material.dart';
import 'package:jobisto/utils/utils.dart';

import '../../tab_orders/domain/dummy_models/services_list_model.dart';


class JobberServiceProfileWidget extends StatelessWidget {
  final ServiceListData? service;
  final int? index;
  const JobberServiceProfileWidget({Key? key, this.service, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final notSelectedItem = (ServiceListData.residentialPlumbingData.length - 7) != index;
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
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(child: Text(service?.serTitle ?? "",style: CustomTextStyle.primaryTextColorFont16W600)),

                    index!.isEven ?
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 8.sp,horizontal: 12.sp),
                      decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(10.sp)
                      ),
                      child: Text("ADDED",style: CustomTextStyle.semiBoldFont14Style.copyWith(fontSize: 12.sp,color: kBlackColor),),
                    ) :
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 8.sp,horizontal: 12.sp),
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(
                            color: kPrimaryColor
                          ),
                          borderRadius: BorderRadius.circular(10.sp)
                      ),
                      child: Text("ADD",style: CustomTextStyle.semiBoldFont14Style),
                    )
                  ],
                ),
                SizedBox(height: 8.sp),
                Text("\$${service?.count}" ?? "",style: CustomTextStyle.secondaryTextColorFont14W600),
                SizedBox(height: 8.sp),
                Text(service?.serText ?? "",style: CustomTextStyle.primaryTextColorFont14W300),
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
