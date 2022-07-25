import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../resources/theme/web_color.dart';

class WebButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color;
  final double width;
  final double height;
  const WebButton._(
      {Key? key,
      required this.text,
      required this.onPressed,
      required this.color,
      required this.width,
      required this.height})
      : super(key: key);
  factory WebButton.large({
    Key? key,
    required String text,
    required VoidCallback onPressed,
    required Color color,
  }) {
    return WebButton._(
      key: key,
      text: text,
      onPressed: onPressed,
      color: color,
      height: 135.h,
      width: 975.w,
    );
  }
  factory WebButton.small({
    Key? key,
    required String text,
    required VoidCallback onPressed,
    required Color color,
  }) {
    return WebButton._(
      key: key,
      text: text,
      onPressed: onPressed,
      color: color,
      height: 105.h,
      width: 355.w,
    );
  }
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(55.r),
            color: color,
          ),
          child: Center(
            child: Text(
              text,
              style: Theme.of(context).textTheme.headline5!.copyWith(
                    color: WebColor.onPrimaryColor,
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
