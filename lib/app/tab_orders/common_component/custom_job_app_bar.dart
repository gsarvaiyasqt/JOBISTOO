import 'package:flutter/material.dart';
import 'package:jobisto/utils/utils.dart';

import '../../../base/common_components/custom/custom_background.dart';
class CustomJabAppbar extends StatelessWidget implements PreferredSizeWidget{
  final double? height;
  const CustomJabAppbar({Key? key, this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
     decoration: BoxDecoration(
       color: kPrimaryColor,
       borderRadius: BorderRadius.all(Radius.circular(25))
     ),

    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(height ?? 0);
}
