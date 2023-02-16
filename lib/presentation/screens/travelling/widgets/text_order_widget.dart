import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class TextOrderWidget extends StatelessWidget {
  final String name;
  final Color textColor;
  final Color myBackgroundColor;

  const TextOrderWidget(
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
      style: textTheme.headline6?.copyWith(
          color: textColor, fontSize: 10.sp, fontWeight: FontWeight.normal),
    );
  }
}
