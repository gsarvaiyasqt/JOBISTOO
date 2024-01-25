import 'package:flutter/cupertino.dart';

import '../../../utils/utils.dart';
import '../../tab_seller/domain/dummy_models/portfolio_model.dart';
import '../domin/dummy_model.dart';

class CommonDoneJobsCard extends StatefulWidget {
  JobsPortfolioClass? listData;
   CommonDoneJobsCard({super.key,this.listData});

  @override
  State<CommonDoneJobsCard> createState() => _CommonDoneJobsCardState();
}

class _CommonDoneJobsCardState extends State<CommonDoneJobsCard> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
          color: kLightGrayColor.withOpacity(0.16),
          borderRadius: BorderRadius.circular(10.sp)
      ),
      margin: EdgeInsets.only(bottom: 10.sp),
      padding: EdgeInsets.symmetric(horizontal: 14.sp,vertical: 12.sp),
      child: Column(
        children: [

          Row(
            children: [
              Expanded(child: Text(widget.listData?.title ?? "",style: CustomTextStyle.regularFont18Style,)),
            ],
          ),

          SizedBox(height: 8.sp,),

          Row(
            children: [
              Row(
                children: [
                  Text("\$${widget.listData?.price != null ? widget.listData?.price : ""}",style: CustomTextStyle.yellowSemiBoldFont14Style,),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 12.sp),
                    width: 1.sp,
                    height: 14.sp,
                    color: kSecondaryColor.withOpacity(0.25),
                  ),
                ],
              ),

              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(widget.listData?.date ?? "",style: CustomTextStyle.regularFont12Style.copyWith(color: kSecondaryColor.withOpacity(0.80)),),
                    ImageUtil.iconImageClass.crossArrowIcon
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
