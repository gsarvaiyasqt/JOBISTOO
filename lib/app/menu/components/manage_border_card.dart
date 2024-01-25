import 'package:flutter/material.dart';
import 'package:jobisto/utils/utils.dart';

class ManageBorderCard extends StatefulWidget {
  final GestureTapCallback? onTap;
  final Widget? icon;
  final String? name;
  final String? desc;
  ManageBorderCard({Key? key, this.onTap, this.icon, this.name, this.desc}) : super(key: key);

  @override
  _ManageBorderCardState createState() {
    return _ManageBorderCardState();
  }
}

class _ManageBorderCardState extends State<ManageBorderCard> {
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
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        height: 250.sp,
        decoration: BoxDecoration(
            border: Border.all(color:kLightGrayColor),
            borderRadius: BorderRadius.circular(10.sp)
        ),
        padding: EdgeInsets.all(12.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Container(
              height: 54.sp,
              width: 54.sp,
              child: widget.icon,
            ),


            SizedBox(height: 10.sp),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.name ?? "-",style: CustomTextStyle.regularFont18Style),

                  SizedBox(height: 5.sp),

                  Text(widget.desc ?? "-",style: CustomTextStyle.regularFont14Style.copyWith(color: kSecondaryColor.withOpacity(0.80))),
                ],
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ImageUtil.iconImageClass.crossArrowIcon,
              ],
            )
          ],
        ),
      ),
    );
  }
}