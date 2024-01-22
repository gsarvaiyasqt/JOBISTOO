import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
class ReadMoreWidget extends StatelessWidget {
  final String? text;
  final TextStyle? moreTextStyle;
  final TextStyle? lessTextStyle;
  final TextStyle? textStyle;
  const ReadMoreWidget({Key? key, this.text, this.moreTextStyle, this.lessTextStyle, this.textStyle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ReadMoreText(text ?? "",
      trimLines: 2,
      colorClickableText: Colors.pink,
      trimMode: TrimMode.Line,
      trimCollapsedText: 'Read more',
      trimExpandedText: 'Show less',
      moreStyle: moreTextStyle,
      style: textStyle,
      lessStyle: lessTextStyle,
    );
  }
}
