import 'package:flutter/material.dart';
import 'package:jobisto/utils/utils.dart';

class CustomJobConfirmedBackGround extends StatefulWidget {
  final Widget? childBody;
  const CustomJobConfirmedBackGround({super.key,this.childBody});

  @override
  State<CustomJobConfirmedBackGround> createState() => _CustomJobConfirmedBackGroundState();
}

class _CustomJobConfirmedBackGroundState extends State<CustomJobConfirmedBackGround> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [

        Image.asset("assets/images/graphics/confirmed_bg.png",
          fit: BoxFit.cover,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
        ),


        Container(
            child: widget.childBody

        )

      ],
    );
  }
}
