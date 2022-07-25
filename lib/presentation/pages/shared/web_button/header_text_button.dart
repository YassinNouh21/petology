import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:petology/presentation/resources/theme/web_color.dart';

class HeaderTextButton extends StatelessWidget {
  final VoidCallback onPressed;
  final bool enableHeaderTextButton;
  final String text;

  const HeaderTextButton._({
    Key? key,
    required this.onPressed,
    required this.text,
    required this.enableHeaderTextButton,
  }) : super(key: key);

  factory HeaderTextButton.unAuth({
    Key? key,
    required String text,
  }) {
    return HeaderTextButton._(
      key: key,
      enableHeaderTextButton: false,
      onPressed: () {},
      text: text,
    );
  }
  factory HeaderTextButton.auth({
    Key? key,
    required String text,
    required VoidCallback onPressed,
  }) {
    return HeaderTextButton._(
      key: key,
      onPressed: onPressed,
      enableHeaderTextButton: true,
      text: text,
    );
  }
  @override
  Widget build(BuildContext context) {
    return enableHeaderTextButton
        ? TextButton(
            onPressed: onPressed,
            child: Text(
              text,
              style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    color: WebColor.onTertiaryColor,
                  ),
            ),
          )
        : Text(
            text,
            style: Theme.of(context).textTheme.subtitle1!.copyWith(
                  color: WebColor.onTertiaryColor,
                ),
          );
  }
}
