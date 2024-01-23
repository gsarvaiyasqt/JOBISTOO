import 'package:flutter/material.dart';
import 'package:jobisto/utils/utils.dart';

class CustomMessageButton extends StatefulWidget {
  final EdgeInsetsGeometry? margin;
  const CustomMessageButton({super.key,this.margin});

  @override
  State<CustomMessageButton> createState() => _CustomMessageButtonState();
}

class _CustomMessageButtonState extends State<CustomMessageButton> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: widget.margin,
      padding: EdgeInsets.all(15.sp),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            // offset: Offset(5, 10),
              color: kPrimaryColor,
              blurRadius: 30.sp
          )
        ],
        color: kPrimaryColor,
        shape: BoxShape.circle,
      ),
      child: SizedBox(
        height: 30.sp,
        width: 30.sp,
        child: ImageUtil.iconImageClass.messageChatIcon,
      ),
    );
  }
}
