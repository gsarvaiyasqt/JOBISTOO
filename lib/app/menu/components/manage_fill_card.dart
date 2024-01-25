import 'package:flutter/material.dart';
import 'package:jobisto/utils/utils.dart';

class ManageFillCard extends StatefulWidget {
  final GestureTapCallback? onTap;
  final Widget? icon;
  final String? value;
  final String? cardName;
  const ManageFillCard({super.key, this.onTap, this.icon, this.value, this.cardName});

  @override
  State<ManageFillCard> createState() => _ManageFillCardState();
}

class _ManageFillCardState extends State<ManageFillCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        height: 120.sp,
        width: double.infinity,
        padding: EdgeInsets.only(left: 10.sp,right: 10.sp,top: 8.sp),
        decoration: BoxDecoration(
            color: kLightGrayColor.withOpacity(0.16),
            borderRadius: BorderRadius.circular(10.sp)
        ),
        child: Column(
          children: [
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                  height: 35.sp,
                  width: 35.sp,
                  child: widget.icon
              ),
            ),

            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.value ?? "5",style: CustomTextStyle.semiBoldFont20Style.copyWith(fontSize: 30.sp,color: kPrimaryColor)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(child: Text(widget.cardName ?? "Services", style: CustomTextStyle.regularFont18Style)),

                          ImageUtil.iconImageClass.crossArrowIcon,
                        ],
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
