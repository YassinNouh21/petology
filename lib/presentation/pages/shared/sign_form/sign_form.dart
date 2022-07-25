import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:petology/presentation/resources/theme/Web_color.dart';
import 'package:petology/presentation/resources/theme/web_strings.dart';

// FIXME: add shadow into box text field
class SignForm extends StatelessWidget {
  const SignForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40.r),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 4),
                  spreadRadius: 3,
                  color: Colors.black.withOpacity(0.03),
                  blurRadius: 6.r,
                )
              ],
              shape: BoxShape.rectangle),
          child: SizedBox(
            width: 1000.w,
            child: TextFormField(
              decoration: InputDecoration(
                hintText: WebSignInString.email,
                hintStyle: Theme.of(context).textTheme.labelSmall!.copyWith(
                      color: WebColor.primaryColor,
                    ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40.r),
                  borderSide: const BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
                filled: true,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 70.w, vertical: 40.h),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 40.h,
        ),
        SizedBox(
          width: 1000.w,
          child: TextFormField(
            decoration: InputDecoration(
              hintText: WebSignInString.password,
              hintStyle: Theme.of(context).textTheme.labelSmall!.copyWith(
                    color: WebColor.primaryColor,
                  ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40.r),
                borderSide: const BorderSide(
                  width: 0,
                  style: BorderStyle.none,
                ),
              ),
              filled: true,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 70.w, vertical: 40.h),
            ),
          ),
        ),
      ],
    ));
  }
}
