import 'package:flutter/material.dart';
import 'package:jobisto/app/tab_seller/domain/dummy_models/portfolio_model.dart';

import '../../../utils/utils.dart';

class SelectedPortFolioList extends StatefulWidget {

  final PortfolioClass? selectedPortfolioData;

  const SelectedPortFolioList({super.key,this.selectedPortfolioData});

  @override
  State<SelectedPortFolioList> createState() => _SelectedPortFolioListState();
}

class _SelectedPortFolioListState extends State<SelectedPortFolioList> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
              Expanded(child: Text(widget.selectedPortfolioData?.title ?? "",style: CustomTextStyle.regularFont18Style,)),

              SizedBox(
                height: 24.sp,
                width: 24.sp,
                child: ImageUtil.iconImageClass.cancelIcon,
              )
            ],
          ),

          SizedBox(height: 8.sp,),

          Row(
            children: [
              Text("\$${widget.selectedPortfolioData?.price != null ? widget.selectedPortfolioData?.price : ""}",style: CustomTextStyle.yellowSemiBoldFont14Style,),

              Container(
                margin: EdgeInsets.symmetric(horizontal: 12.sp),
                width: 1.sp,
                height: 14.sp,
                color: kSecondaryColor.withOpacity(0.25),
              ),

              Text(widget.selectedPortfolioData?.date ?? "",style: CustomTextStyle.regularFont12Style.copyWith(color: kSecondaryColor.withOpacity(0.80)),)
            ],
          )
        ],
      ),
    );
  }
}
