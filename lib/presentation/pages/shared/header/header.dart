import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:petology/presentation/pages/shared/header/header_elevated_button.dart';
import 'package:petology/presentation/pages/shared/web_button/header_text_button.dart';
import 'package:petology/presentation/resources/theme/web_gradient.dart';
import 'package:petology/presentation/resources/theme/web_strings.dart';

import '../../../resources/theme/web_asset.dart';

// FIXME: Padding problem 
class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(gradient: WebGradient.primaryGradient),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 50.w, vertical: 50.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset(
              WebAsset.petologyIcon,
              width: 140.w,
            ),
            SizedBox(
              width: 300.w,
            ),
            HeaderTextButton.unAuth(
              text: WebHeaderString.aboutUs,
            ),
            SizedBox(
              width: 85.w,
            ),
            HeaderTextButton.unAuth(
              text: WebHeaderString.categories,
            ),
            SizedBox(
              width: 85.w,
            ),
            HeaderTextButton.unAuth(
              text: WebHeaderString.services,
            ),
            SizedBox(
              width: 85.w,
            ),
            HeaderTextButton.unAuth(
              text: WebHeaderString.request,
            ),
            SizedBox(
              width: 165.w,
            ),
            HeaderElevatedButton(
              color: Colors.white,
              onPressed: () {},
              text: WebHeaderString.login,
            ),
            SizedBox(
              width: 30.w,
            ),
            HeaderElevatedButton(
              color: Colors.white,
              onPressed: () {},
              text: WebHeaderString.signUp,
            )
          ],
        ),
      ),
    );
  }
}
