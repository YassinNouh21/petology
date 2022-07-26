import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:petology/presentation/pages/shared/sign_form/sign_text_field.dart';
import 'package:petology/presentation/pages/shared/web_button/sign_button.dart';
import 'package:petology/presentation/resources/theme/Web_color.dart';
import 'package:petology/presentation/resources/theme/web_strings.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        SizedBox(
          height: 50.h,
        ),
        const SignTextField(
          label: WebSignUpString.firstName,
        ),
        SizedBox(
          height: 40.h,
        ),
        const SignTextField(
          label: WebSignUpString.lastName,
        ),
        SizedBox(
          height: 40.h,
        ),
        const SignTextField(
          label: WebSignUpString.email,
        ),
        SizedBox(
          height: 40.h,
        ),
        const SignTextField(
          label: WebSignUpString.password,
        ),
        SizedBox(
          height: 40.h,
        ),
        const SignTextField(
          label: WebSignUpString.rePassword,
        ),
        SizedBox(
          height: 40.h,
        ),
        const SignTextField(
          label: WebSignUpString.country,
        ),
        SizedBox(
          height: 40.h,
        ),
        WebButton.large(
          text: WebSignUpString.signUp,
          onPressed: () {},
          color: WebColor.primaryColor,
        ),
      ],
    ));
  }
}
