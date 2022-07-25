import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:petology/presentation/resources/theme/web_strings.dart';

import '../../../resources/theme/web_color.dart';

// FIXME: Google Button: add google icon
class GoogleButton extends StatelessWidget {
  const GoogleButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        child: Container(
          width: 425.w,
          height: 100.h,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: 1.w,
            ),
            borderRadius: BorderRadius.circular(45.r),
            color: Colors.white,
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
                  WebSignInString.google,
                  style: Theme.of(context).textTheme.labelSmall!.copyWith(
                        color: Colors.black,
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
