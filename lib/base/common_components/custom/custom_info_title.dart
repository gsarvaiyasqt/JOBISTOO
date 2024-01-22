import 'package:flutter/material.dart';
import 'package:jobisto/utils/utils.dart';

class CustomInfoTitle extends StatefulWidget {
  final void Function()? onTap;
  final String? firstText;
  final String? secondText;

  const CustomInfoTitle({super.key,this.onTap,this.firstText,this.secondText});

  @override
  State<CustomInfoTitle> createState() => _CustomInfoTitleState();
}

class _CustomInfoTitleState extends State<CustomInfoTitle> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.sp),
      child: Row(
        children: [
          Expanded(child: Text(widget.firstText ?? "",style: CustomTextStyle.semiBoldFont20Style,)),

          InkWell(
              onTap: widget.onTap,
              child: Text(widget.secondText ?? "See All",style: CustomTextStyle.yellowRegularFont14Style,))
        ],
      ),
    );
  }
}
