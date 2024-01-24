import 'package:flutter/material.dart';

import '../../../utils/utils.dart';
import '../../tab_orders/domain/dummy_models/skilles_model.dart';
import '../domain/dummy_models/booker_service_model.dart';

class BookingServiceListComponent extends StatefulWidget {
  final BookServiceClass? bookServiceData;
  const BookingServiceListComponent({super.key, this.bookServiceData});

  @override
  State<BookingServiceListComponent> createState() => _BookingServiceListComponentState();
}

class _BookingServiceListComponentState extends State<BookingServiceListComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.sp),
      padding: EdgeInsets.symmetric(horizontal: 12.sp,vertical: 12.sp),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.sp),
          color: kLightGrayColor.withOpacity(0.12)
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Column(
            children: [
              SizedBox(height: 5.sp,),
              SizedBox(
                height: 24.sp,
                width: 24.sp,
                child: Image.asset(
                    "$dummyImgPath${widget.bookServiceData?.profilePic}"),
              ),

            ],
          ),

          SizedBox(width: 10.sp,),

          Expanded(
            child: Column(

              children: [
                Row(
                  children: [

                    Expanded(child: Text(widget.bookServiceData?.name ?? "",style: CustomTextStyle.regularFont14Style)),

                    if(widget.bookServiceData?.review != null)
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(60.sp),
                            color: kLightGrayColor.withOpacity(0.16)
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 10.sp,vertical: 6.5.sp),
                        child: Row(
                          children: [
                            Text("${widget.bookServiceData?.review.toString()}",style: CustomTextStyle.regularFont12Style),

                            SizedBox(width: 6.sp,),

                            SizedBox(
                              height: 14.sp,
                              width: 14.sp,
                              child: ImageUtil.iconImageClass.starIcon,
                            )
                          ],
                        ),
                      )
                  ],
                ),

                Row(
                  children: [
                    Text.rich(
                        TextSpan(
                            text: "\$${widget.bookServiceData?.price != null ? widget.bookServiceData?.price : ""}",
                            style: CustomTextStyle.yellowRegularFont16Style,
                            children: [
                              TextSpan(
                                  text: " (Plumbing System Installation)",
                                  style: CustomTextStyle.lightFont14Style
                              )
                            ]
                        )
                    )
                  ],
                ),

                SizedBox(height: 10.sp,),

                Row(
                  children: [
                    Wrap(
                      spacing: 6.sp,
                      children: List.generate(SkillsModel.skillsList.length, (index) {
                        return Container(
                          padding: EdgeInsets.symmetric(horizontal: 10.sp,vertical: 4.sp),
                          decoration: BoxDecoration(
                              color: const Color(0xff6F778B).withOpacity(0.16),
                              borderRadius: BorderRadius.circular(60.sp)
                          ),
                          child: Text(SkillsModel.skillsList[index].skill ?? "",style: CustomTextStyle.lightTextFieldStyle,),
                        );
                      }),
                    ),
                  ],
                )

              ],
            ),
          ),


        ],
      ),
    );
  }
}
