import 'package:flutter/material.dart';
import 'package:jobisto/base/common_components/custom/custom_appbar_prefix_icon.dart';
import 'package:jobisto/base/common_components/custom/custom_background.dart';
import 'package:jobisto/utils/utils.dart';
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  final double? height;
  final String? title;
  const CustomAppBar({Key? key,this.height, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Stack(
        alignment: Alignment.center,
        children: [
          const CustomAppbarPrefixIcon(),
          Text(title ?? "",style: CustomTextStyle.primaryTextColorFont20W600,overflow: TextOverflow.ellipsis,maxLines: 1)
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(height ?? 0);
}
