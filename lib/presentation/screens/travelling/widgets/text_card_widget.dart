import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class TextCardWidget extends StatelessWidget {
  final String name;
  final Color textColor;
  final Color myBackgroundColor;

  const TextCardWidget(
      {Key? key,
      required this.name,
      required this.textColor,
      required this.myBackgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Text(
      name,
      style: textTheme.headline6?.copyWith(color: textColor, fontSize: 12.sp),
    );
  }
}
