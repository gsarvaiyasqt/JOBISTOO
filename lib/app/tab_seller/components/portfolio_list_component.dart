import 'package:flutter/material.dart';
import 'package:jobisto/app/tab_seller/domain/dummy_models/portfolio_model.dart';
import 'package:jobisto/utils/utils.dart';

import '../../../base/common_components/custom/custom_checkbox.dart';

class PortFolioListComponent extends StatefulWidget {
  final PortfolioClass? portfolioData;
  const PortFolioListComponent({super.key, this.portfolioData});

  @override
  State<PortFolioListComponent> createState() => _PortFolioListComponentState();
}

class _PortFolioListComponentState extends State<PortFolioListComponent> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          widget.portfolioData?.isSelected = !widget.portfolioData!.isSelected;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 14.sp,vertical: 12.sp),
        margin: EdgeInsets.only(bottom: 10.sp),
        decoration: BoxDecoration(
            color:  kLightGrayColor.withOpacity(0.16),
            borderRadius: BorderRadius.circular(10.sp)
        ),
        child: Column(
          children: [
            Row(
              children: [

                Expanded(
                    child: Text(
                      widget.portfolioData?.title ?? "",
                      style: CustomTextStyle.regularFont18Style,
                    )),

                CustomCheckBox(
                  borderColor: kSecondaryColor.withOpacity(0.5),
                  checkColor: kSecondaryColor,
                  fillColor: kGreenColor,
                  value: widget.portfolioData?.isSelected,
                  onChanged: (value) {
                    setState(() {
                      widget.portfolioData?.isSelected = value == true;
                    });
                  },
                )

              ],
            ),

            Row(
              children: [
                Text("\$${widget.portfolioData?.price != null ? widget.portfolioData?.price : ""}",style: CustomTextStyle.yellowSemiBoldFont14Style.copyWith(fontSize: 16.sp),),

                Container(
                  margin: EdgeInsets.symmetric(horizontal: 12.sp),
                  width: 1.sp,
                  height: 14.sp,
                  color: kSecondaryColor.withOpacity(0.25),
                ),

                Text(widget.portfolioData?.date ?? "",style: CustomTextStyle.regularFont12Style.copyWith(color: kSecondaryColor.withOpacity(0.80)),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
