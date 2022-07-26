import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:petology/presentation/pages/shared/header/header.dart';
import 'package:petology/presentation/pages/shared/web_button/forget_password_text_button.dart';
import 'package:petology/presentation/pages/shared/web_button/header_text_button.dart';
import 'package:petology/presentation/pages/sign_in/widgets/optional_sign_button_container.dart';
import 'package:petology/presentation/pages/sign_in/widgets/spliter.dart';
import 'package:petology/presentation/pages/sign_up/widgets/sign_up_form.dart';
import 'package:petology/presentation/resources/theme/web_asset.dart';
import 'package:petology/presentation/resources/theme/web_strings.dart';

import '../../resources/theme/web_color.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Header(),
        Expanded(
          child: Container(
            width: double.infinity,
            child: Row(
              children: [
                Expanded(flex: 3, child: Container()),
                Expanded(
                  flex: 6,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 165.w),
                    margin: EdgeInsets.symmetric(vertical: 100.h),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(90.r),
                        border: Border.all(
                            color: WebColor.primaryColor, width: 5.r)),
                    child: Column(
                      children: [
                        SizedBox(height: 70.h),
                        Text(
                          WebSignUpString.signUp,
                          style: Theme.of(context)
                              .textTheme
                              .headline3!
                              .copyWith(
                                  color: WebColor.primaryColor,
                                  fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 90.h),
                        const OptionalSignButtonContainer(),
                        SizedBox(height: 15.h),
                        const Spliter(),
                        const SignUpForm(),
                        SizedBox(height: 25.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(WebSignUpString.alreadyHaveAccount,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline5!
                                    .copyWith(color: WebColor.primaryColor)),
                            ForgetPasswordTextButton(
                              onPressed: () {},
                              text: WebSignUpString.signUp,
                              textSize: 42.sp,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(flex: 3, child: Container()),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
/*
Positioned(
          top: 500.h,
          left: 20.w,
          child: SvgPicture.asset(
            WebAsset.petFootPrintsIcon,
            width: 350.w,
          ),
        ),
Positioned(
  top: 1000.h,
  right: 90.w,
  child: SvgPicture.asset(
    WebAsset.petFootPrintsIcon,
    width: 350.w,
  ),
),
  */