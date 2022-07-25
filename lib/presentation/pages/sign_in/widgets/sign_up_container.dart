import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:petology/presentation/pages/shared/web_button/forget_password_text_button.dart';
import 'package:petology/presentation/resources/theme/web_color.dart';
import 'package:petology/presentation/resources/theme/web_strings.dart';

class SignUpContainer extends StatelessWidget {
  const SignUpContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Container()),
        Text(
          WebSignInString.didChange,
          style: Theme.of(context).textTheme.labelSmall!.copyWith(
                color: WebColor.primaryColor,
              ),
        ),
        ForgetPasswordTextButton(
          text: WebSignInString.signUp,
          textSize: 26.sp,
          onPressed: () {},
        ),
        Expanded(child: Container()),
      ],
    );
  }
}
