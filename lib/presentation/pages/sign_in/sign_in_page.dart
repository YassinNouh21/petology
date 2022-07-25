import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:petology/presentation/pages/shared/sign_form/sign_form.dart';
import 'package:petology/presentation/pages/shared/web_button/forget_password_text_button.dart';
import 'package:petology/presentation/pages/shared/web_button/sign_button.dart';
import 'package:petology/presentation/resources/routes/web_route_names.dart';
import 'package:petology/presentation/resources/theme/web_color.dart';

import '../../resources/theme/web_strings.dart';
import '../shared/header/header.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Header(),
            SizedBox(height: 440.h),
            Container(
              width: 1150.w,
              padding: EdgeInsets.symmetric(horizontal: 90.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(90.r),
                border: Border.all(color: WebColor.primaryColor, width: 3.r),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: double.infinity,
                  ),
                  Text(
                    WebSignInString.login,
                    style: Theme.of(context).textTheme.headline3!.copyWith(
                          color: WebColor.primaryColor,
                        ),
                  ),
                  SizedBox(height: 55.h),
                  SignForm(),
                  SizedBox(
                    height: 90.h,
                  ),
                  WebButton.large(
                    color: WebColor.primaryColor,
                    onPressed: () {},
                    text: WebSignInString.login,
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Row(
                    children: [
                      Expanded(child: Container()),
                      ForgetPasswordTextButton(
                        text: WebSignInString.forgetPassword,
                        textSize: 26.sp,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 160.h),
          ],
        ),
      ),
    );
  }
}
