import 'package:flutter/material.dart';

import '../../../resources/theme/web_color.dart';

class ForgetPasswordTextButton extends StatelessWidget {
  final String text;
  final double textSize;
  final VoidCallback onPressed;
  const ForgetPasswordTextButton({
    Key? key,
    required this.text,
    required this.textSize,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: ButtonStyle(
          overlayColor:
              MaterialStateColor.resolveWith((states) => Colors.transparent),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: Theme.of(context).textTheme.labelSmall!.copyWith(
                color: WebColor.primaryColor,
                fontWeight: FontWeight.bold,
                fontSize: textSize,
              ),
        ));
  }
}
