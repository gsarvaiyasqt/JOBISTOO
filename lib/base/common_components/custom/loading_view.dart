import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jobisto/utils/utils.dart';

class Loading extends StatelessWidget {
  const Loading({Key? key, this.color, this.size}) : super(key: key);

  final Color? color;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: size ?? 22,
        width: size ?? 22,
        child: Platform.isIOS ? const CupertinoActivityIndicator(animating: true) : CircularProgressIndicator(
          strokeWidth: 2,
          valueColor: AlwaysStoppedAnimation<Color>(color ?? kLowWhiteColor),
        ),
      ),
    );
  }
}

class LoadingView extends StatelessWidget {
  const LoadingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.black38,
      child: Center(child: Container(
          padding: const EdgeInsets.all(12),
          decoration: const BoxDecoration(
              color: kLowWhiteColor,
              shape: BoxShape.circle
          ),
          child: const SizedBox(
              height: 25,
              width: 25,
              child: CircularProgressIndicator(strokeWidth: 2.5)))),
    );
  }
}
