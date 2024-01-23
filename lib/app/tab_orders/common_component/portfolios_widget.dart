import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobisto/app/tab_orders/domain/dummy_models/portfolios_model.dart';
import 'package:jobisto/utils/utils.dart';
class PortfoliosWidget extends StatelessWidget {
  final PortfoliosModel? portfolios;
  const PortfoliosWidget({Key? key, this.portfolios}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(left: 10.sp),
        padding: EdgeInsets.all(12.sp),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: kLightGrayColor.withOpacity(0.60),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
                width: 32.sp,
                height: 32.sp,
                child: SvgPicture.asset(portfolios?.icon ?? "",fit: BoxFit.cover,)),
            SizedBox(height: 14.sp),
            Row(
              children: [
                Expanded(child: Text(portfolios?.point ?? "",style: CustomTextStyle.primaryTextColorFont18W400,)),
              ],
            ),
            SizedBox(height: 6.sp),
            Row(
              children: [
                Expanded(child: Text("\$${portfolios?.count}" ?? "",style: CustomTextStyle.secondaryTextColorFont14W600,)),
              ],
            ),
            SizedBox(height: 6.sp),
            Row(
              children: [
                Expanded(child: Text(portfolios?.date ?? "",style: CustomTextStyle.primaryTextColorFont12W400,)),
                SizedBox(
                    height: 24.sp,
                    width: 24.sp,
                    child: ImageUtil.iconImageClass.crossArrowIcon)

              ],
            ),
          ],
        ),
      ),
    );
  }
}
