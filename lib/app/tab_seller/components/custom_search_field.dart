
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobisto/utils/utils.dart';


class CustomSearchField extends StatefulWidget {
  final String? hintText;
  final String? imageIcon;
  final ValueChanged<String>? valueChanged;
  final TextEditingController? textEditingController;
  const CustomSearchField({Key? key, this.valueChanged, this.textEditingController,this.imageIcon,this.hintText}) : super(key: key);

  @override
  State<CustomSearchField> createState() => _CustomSearchFieldState();
}

class _CustomSearchFieldState extends State<CustomSearchField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      padding: EdgeInsets.symmetric(horizontal: 15.sp),
      decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(50.sp),
          border: Border.all(
            color: kLightGrayColor
          ),
      ),
      child: Row(
        children: [
          SizedBox(
              height: 24.sp,
              width: 24.sp,
              child: SvgPicture.asset(widget.imageIcon ?? "")),
          SizedBox(width: 15.sp),
          Expanded(
            child: TextFormField(
              cursorColor: kPrimaryColor,
              style: CustomTextStyle.lightTextFieldStyle,
              onChanged: (value) => widget.valueChanged?.call(value),
              controller: widget.textEditingController,
              decoration: InputDecoration(border: InputBorder.none,
                  hintText: widget.hintText,
                  hintStyle: CustomTextStyle.lightTextFieldStyle,
                contentPadding: EdgeInsets.only(bottom: 15.sp),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
