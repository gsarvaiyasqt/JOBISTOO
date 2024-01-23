import 'package:flutter/material.dart';

import '../../../utils/utils.dart';

class BecomeJobCard extends StatefulWidget {
  final GestureTapCallback? onTap;
  String? headerText;
  String? descText;
  Color? radioBtnColor;
  Color? radioBorderColor;
  BecomeJobCard({Key? key,this.headerText,this.descText,this.radioBtnColor,this.radioBorderColor, this.onTap}) : super(key: key);

  @override
  _BecomeJobCardState createState() {
    return _BecomeJobCardState();
  }
}

class _BecomeJobCardState extends State<BecomeJobCard> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: widget.onTap,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 12.sp,vertical: 14.sp),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.sp),
              color: kLightGrayColor.withOpacity(0.16),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(widget.headerText ?? "-",style: CustomTextStyle.semiBoldFont20Style,),

                    Container(
                      height: 18.sp,
                      width: 18.sp,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          // color: kPrimaryColor,
                          border: Border.all(color: widget.radioBorderColor ?? kPrimaryColor)
                      ),
                      child: Container(
                        height: 18.sp,
                        width: 18.sp,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: widget.radioBtnColor ??  Colors.lightBlueAccent
                        ),
                        margin: EdgeInsets.all(3.sp),
                      ),
                    )
                  ],
                ),

                SizedBox(height: 8.sp),

                Text(widget.descText ?? "-",style: CustomTextStyle.lightFont18Style.copyWith(fontSize: 16.sp,fontWeight: FontWeight.w300,color: kSecondaryColor.withOpacity(0.80)),),
              ],
            ),
          ),
        ),

        SizedBox(height: 12.sp),
      ],
    );
  }
}