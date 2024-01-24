import 'package:flutter/material.dart';
import 'package:jobisto/utils/utils.dart';




class CustomCheckBox extends StatelessWidget {
  const CustomCheckBox({Key? key, this.onChanged, this.value, this.borderColor,this.checkColor, this.fillColor}) : super(key: key);

  final ValueChanged<bool?>? onChanged;
  final bool? value;
  final Color? borderColor;
  final Color? checkColor;
  final Color? fillColor;

  @override
  Widget build(BuildContext context) {

    const themeColor = kPrimaryColor;

    return SizedBox(
      width: 24.sp,
      height: 24.sp,
      child: Theme(
          data: Theme.of(context).copyWith(
            unselectedWidgetColor: kPrimaryColor.withOpacity(0.1),
          ),
          child: CheckboxTheme(
            data: CheckboxThemeData(
                side: BorderSide(width: 1.5,color: borderColor ?? kPrimaryColor),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.5.sp))
            ),
            child: Checkbox(
              activeColor: fillColor ?? themeColor,
              checkColor: checkColor ?? Colors.black,
              onChanged: onChanged,
              value: value,
            ),
          )),
    );
  }
}