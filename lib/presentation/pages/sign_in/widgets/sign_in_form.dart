import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:petology/presentation/resources/theme/web_strings.dart';

import '../../shared/sign_form/sign_text_field.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          const SignTextField(
            label: WebSignInString.email,
          ),
          SizedBox(
            height: 40.h,
          ),
          const SignTextField(
            label: WebSignInString.password,
          ),
          SizedBox(
            height: 40.h,
          ),
        ],
      ),
    );
  }
}
