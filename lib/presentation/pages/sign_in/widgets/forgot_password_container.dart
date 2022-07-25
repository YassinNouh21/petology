import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:petology/presentation/pages/shared/web_button/forget_password_text_button.dart';
import 'package:petology/presentation/resources/theme/web_strings.dart';

class ForotPasswordContainer extends StatelessWidget {
  const ForotPasswordContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Container()),
        ForgetPasswordTextButton(
          text: WebSignInString.forgetPassword,
          textSize: 26.sp,
          onPressed: () {},
        ),
      ],
    );
  }
}
