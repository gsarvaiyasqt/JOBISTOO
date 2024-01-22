import 'package:flutter/material.dart';
import 'package:jobisto/utils/utils.dart';

class CustomSettingsBackGround extends StatefulWidget {
  final Widget? childBody;
  const CustomSettingsBackGround({super.key,this.childBody});

  @override
  State<CustomSettingsBackGround> createState() => _CustomSettingsBackGroundState();
}

class _CustomSettingsBackGroundState extends State<CustomSettingsBackGround> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [

        Container(
          decoration: BoxDecoration(
              gradient: RadialGradient(
                  radius: 8,
                  center: Alignment.topLeft,
                  stops: [0.02,0.2,0.5,0.9],
                  colors: [
                    Color(0xff3C3F4B),
                    Color(0xff1D2532),
                    Color(0xff111319),
                    Color(0xff101011),
                  ]
              )
          ),
        ),

        Container(
          height: 200.sp,
          decoration: BoxDecoration(
            gradient: LinearGradient(

                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xff212328).withOpacity(0.75),
                  Color(0xff232128).withOpacity(0.45),
                  Colors.transparent
                ]
            ),
          ),
        ),

          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: ImageUtil.graphicsClass.settingsBg,
          ),

        Container(
            child: widget.childBody

        )

      ],
    );
  }
}
