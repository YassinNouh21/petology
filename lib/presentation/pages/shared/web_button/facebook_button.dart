import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:petology/presentation/resources/theme/web_strings.dart';

import '../../../resources/theme/web_color.dart';

class FacebookButton extends StatelessWidget {
  const FacebookButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        child: Container(
          width: 425.w,
          height: 100.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(45.r),
            color: WebColor.facebookColor,
          ),
          child: Center(
            child: Row(
              children: [
                SizedBox(
                  width: 50.w,
                ),
                Icon(
                  Icons.facebook,
                  color: Colors.white,
                  size: 30.w,
                ),
                SizedBox(
                  width: 60.w,
                ),
                Text(
                  WebSignInString.facebook,
                  style: Theme.of(context).textTheme.labelSmall!.copyWith(
                        color: Colors.white,
                        fontSize: 30.sp,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
