import 'package:flutter/material.dart';
import 'package:petology/presentation/pages/shared/web_button/facebook_button.dart';
import 'package:petology/presentation/pages/shared/web_button/google_button.dart';

class OptionalSignButtonContainer extends StatelessWidget {
  const OptionalSignButtonContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        FacebookButton(),
        GoogleButton(),
      ],
    );
  }
}
