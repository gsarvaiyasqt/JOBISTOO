import 'package:flutter/material.dart';
import 'package:jobisto/app/tab_seller/domain/dummy_models/manage_jobs_request_model.dart';
import 'package:jobisto/app/tab_seller/route/tab_seller_route.dart';
import 'package:jobisto/utils/utils.dart';


class RequestScreen extends StatefulWidget {
  const RequestScreen({super.key});

  @override
  State<RequestScreen> createState() => _RequestScreenState();
}

class _RequestScreenState extends State<RequestScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.only(top: 12.sp,bottom: 80.sp),
      itemCount: ManageJobsRequestClass.manageJobsRequestList.length,
      itemBuilder: (context, index) {
        final requestList = ManageJobsRequestClass.manageJobsRequestList[index];
        return Padding(
          padding: EdgeInsets.only(bottom: 10.sp,left: 20.sp,right: 20.sp),
          child: InkWell(
            onTap: () {
              index.isEven ?

                  TabSellerRoute.goToJobDetailsPage(context)

              :

                  TabSellerRoute.goToJobRequestPage(context);
            },
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Text(requestList.applied ?? "",style: CustomTextStyle.regularFont12Style,),

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

                        Flexible(child: Text(requestList.name ?? "",style: CustomTextStyle.regularFont14Style,))
                      ],
                    ),

                    SizedBox(height: 6.sp,),

                    requestList.category != null ?
                    Text(requestList.category ?? "",style: CustomTextStyle.regularFont18Style,)

                        :

                    Row(
                      children: [

                        if(requestList.serviceNum != null)

                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40.sp),
                            color: kLightGrayColor.withOpacity(0.30)
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 10.sp,vertical: 5.sp),
                          child: Text.rich(
                            TextSpan(
                              text: "Service ",
                              style: CustomTextStyle.regularFont16Style,
                              children: [
                                TextSpan(
                                  text: "(${requestList.serviceNum})",
                                  style: CustomTextStyle.regularFont16Style.copyWith(color: kPrimaryColor)
                                )
                              ]
                            )
                          ),
                        ),

                        if(requestList.productNum != null)

                          SizedBox(width: 10.sp,),

                        if(requestList.productNum != null)

                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40.sp),
                              color: kLightGrayColor.withOpacity(0.30)
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 10.sp,vertical: 5.sp),
                          child: Text.rich(
                              TextSpan(
                                  text: "Products ",
                                  style: CustomTextStyle.regularFont16Style,
                                  children: [
                                    TextSpan(
                                        text: "(${requestList.productNum})",
                                        style: CustomTextStyle.regularFont16Style.copyWith(color: kPrimaryColor)
                                    )
                                  ]
                              )
                          ),
                        ),


                      ],
                    ),

                    SizedBox(height: 8.sp,),



                    Row(
                      children: [

                        requestList.location != null ?

                        Row(
                          children: [

                            SizedBox(
                              height: 16.sp,
                              width: 16.sp,
                              child: ImageUtil.iconImageClass.locationIcon,
                            ),

                            SizedBox(width: 6.sp,),

                            Text(requestList.location ?? "",style: CustomTextStyle.regularFont12Style,),

                          ],
                        ) :

                            Text("\$${requestList.price}",style: CustomTextStyle.yellowSemiBoldFont14Style,),


                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 12.sp),
                          width: 1,
                          height: 14.sp,
                          color: kPrimaryColor.withOpacity(0.25),
                        ),

                       Row(
                         children: [

                           SizedBox(
                             height: 16.sp,
                             width: 16.sp,
                             child: ImageUtil.iconImageClass.calendarIcon,
                           ),

                           SizedBox(width: 6.sp,),

                           Text(requestList.date ?? "",style: CustomTextStyle.regularFont12Style,)

                         ],
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
