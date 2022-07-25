import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../resources/theme/web_color.dart';
import '../../../resources/theme/web_strings.dart';

class Spliter extends StatelessWidget {
  const Spliter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [

        Expanded(
          child: Container(
            margin: EdgeInsets.only(
              right: ScreenUtil().setWidth(15),
            ),
            
            height: 3.h,
            color: WebColor.primaryColor,
          ),
        ),
        Text(
          WebSignInString.or,
          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                color: WebColor.primaryColor,
                fontWeight: FontWeight.bold,
              ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(
              left: ScreenUtil().setWidth(15),
            ),
            height: 3.h,
            color: WebColor.primaryColor,
          ),
        ),
      ],
    );
  }
}
