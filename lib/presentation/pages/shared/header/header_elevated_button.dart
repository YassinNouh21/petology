import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../resources/theme/web_color.dart';

class HeaderElevatedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Color color;
  final String text;
  bool enableBorderButton;

  HeaderElevatedButton({
    Key? key,
    required this.onPressed,
    required this.color,
    required this.text,
    this.enableBorderButton = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 65.w,
            vertical: 16.h,
          ),
          decoration: BoxDecoration(
            color: enableBorderButton ? Colors.transparent : color,
            borderRadius: BorderRadius.circular(30),
            border: Border.all(
              color: WebColor.secondaryColor,
              width: 1.w,
            ),
          ),
          child: Center(
            child: Text(
              text,
              style: Theme.of(context).textTheme.subtitle2!.copyWith(
                    color: WebColor.onTertiaryColor,
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
