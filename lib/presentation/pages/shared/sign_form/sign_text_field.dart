import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:petology/presentation/resources/theme/web_strings.dart';

import '../../../resources/theme/web_color.dart';

class SignTextField extends StatefulWidget {
  final String label;
  final String? Function(String?)? validator;
  final Function(String)? onChange;
  const SignTextField({
    Key? key,
    required this.label,
    this.validator,
    required this.onChange,
  }) : super(key: key);

  @override
  State<SignTextField> createState() => _SignTextFieldState();
}

class _SignTextFieldState extends State<SignTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40.r),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 4.h),
              spreadRadius: 3,
              color: Colors.black.withOpacity(0.020),
              blurRadius: 6.r,
            )
          ],
          shape: BoxShape.rectangle),
      child: SizedBox(
        width: 1000.w,
        child: TextFormField(
          validator: widget.validator,
          onChanged: widget.onChange,
          decoration: InputDecoration(
            hintText: widget.label,
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
    );
  }
}
