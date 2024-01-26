import 'package:flutter/material.dart';
import 'package:jobisto/app/tab_orders/domain/dummy_models/orders_model.dart';
import 'package:jobisto/utils/utils.dart';

import '../route/order_route.dart';

class RequestTab extends StatefulWidget {
  const RequestTab({super.key});

  @override
  State<RequestTab> createState() => _RequestTabState();
}

class _RequestTabState extends State<RequestTab> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.only(top: 12.sp,bottom: 80.sp),
      itemCount: OrdersClass.requestList.length,
      itemBuilder: (context, index) {
        final requestList = OrdersClass.requestList[index];
        return GestureDetector(
          onTap: () {
            // requestList.jobsServiceData
            TabOrderRoute.goToBecomeAJobberPage(context,JobsServiceData(
              category: requestList.category,
              jobstype: requestList.jobsServiceData?.jobstype,
              statustype: requestList.jobsServiceData?.statustype,
              image: requestList.jobsServiceData?.image,
              text1: requestList.jobsServiceData?.text1,
              text2: requestList.jobsServiceData?.text2
            ));
          },
          child: Padding(
            padding: EdgeInsets.only(bottom: 10.sp,left: 20.sp,right: 20.sp),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 14.sp,vertical: 12.sp),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.sp),
                  color: kLightGrayColor.withOpacity(0.16)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Row(
                    children: [

                      Text(requestList.request ?? "",style: CustomTextStyle.regularFont12Style,),

                      requestList.profilePic != null ?

                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 8.sp),
                        height: 24.sp,
                        width: 24.sp,
                        decoration: BoxDecoration(
                          color: kSecondaryColor,
                          shape: BoxShape.circle,
                        ),
                        child: ClipRRect(
                          child: Image.asset("$dummyImgPath/${requestList.profilePic}"),
                        ),
                      )
                          :
                      const SizedBox.shrink(),

                      Text(requestList.name ?? "",style: CustomTextStyle.regularFont14Style,)
                    ],
                  ),

                  SizedBox(height: 6.sp,),

                  Text(requestList.category ?? "",style: CustomTextStyle.regularFont18Style,),

                  SizedBox(height: 8.sp,),

                  Row(
                    children: [

                      Expanded(
                        child: Row(
                          children: [

                            Text("\$${requestList.price}",style: CustomTextStyle.yellowSemiBoldFont14Style,),

                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 12.sp),
                              height: 14.sp,
                              width: 1.sp,
                              color: kSecondaryColor.withOpacity(0.25),
                            ),

                            Text(requestList.date ?? "",style: CustomTextStyle.lightFont14Style,)
                          ],
                        ),
                      ),

                      SizedBox(
                        height: 24.sp,
                        width: 24.sp,
                        child: ImageUtil.iconImageClass.crossArrowIcon,
                      )
                    ],
                  )
                ],
              )
            ),
          ),
        );
      },);
  }
}
