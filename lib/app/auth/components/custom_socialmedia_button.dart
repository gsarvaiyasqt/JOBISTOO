
import 'package:flutter/material.dart';
import 'package:jobisto/base/common_components/custom/loading_view.dart';
import 'package:jobisto/utils/utils.dart';



class CustomSocialMediaButton extends StatefulWidget {
  final String? btnText;
  final Widget? btnIcon;
  final bool? isLoading;
  final EdgeInsets? btnPadding;
  final Widget? showArrow;
  final Color? btnColor;
  final bool? isBoxShadow;
  final bool? circleShape;
  final double? radius;
  final TextStyle? textStyle;
  final GestureTapCallback? onTap;
  final Widget? child;

  const CustomSocialMediaButton({Key? key, this.btnText, this.isLoading,this.btnIcon, this.isBoxShadow = true ,this.btnPadding, this.btnColor, this.circleShape, this.onTap, this.radius, this.textStyle, this.showArrow, this.child}) : super(key: key);

  @override
  State<CustomSocialMediaButton> createState() => _CustomSocialMediaButtonState();
}

class _CustomSocialMediaButtonState extends State<CustomSocialMediaButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10.sp),
      onTap: widget.isLoading == true ? null : widget.onTap,
      splashColor: kPrimaryColor.withOpacity(0.3),

      child: Container(
        padding:  widget.btnPadding ?? EdgeInsets.symmetric(vertical: 17.sp) ,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(widget.radius ?? 10),
            color: widget.btnColor ?? kButtonColor.withOpacity(0.16),

            boxShadow: [
              widget.isBoxShadow == true ? BoxShadow(
                  offset: Offset(0,4),
                  blurRadius: 30,
                  spreadRadius: 0,
                  color: kBlackColor.withOpacity(0.25)
              ) : BoxShadow(color: Colors.transparent)
            ]

        ),
        child: widget.isLoading ==  true ? const Loading() :

        Center(
            child: widget.btnText == null
                ? widget.child
                : Row(
              mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 24.sp,
                      width: 24.sp,
                      child: widget.btnIcon,
                    ),
                    SizedBox(width: 12.sp,),
                    Text(widget.btnText ?? "text",style: widget.textStyle ?? CustomTextStyle.regularFont14Style,),
                  ],
                )
        ),
      ),
    );
  }
}
