import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:petology/presentation/resources/theme/web_color.dart';
import 'package:petology/presentation/resources/theme/web_strings.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              children: [
                Text(WebFooterString.forAnyQuestions,
                    style: Theme.of(context)
                        .textTheme
                        .headline3!
                        .copyWith(color: WebColor.onPrimaryColor)),
              ],
            ),
            SizedBox(width: 115.w),
            Column(
              children: [],
            ),
          ],
        ),
      ],
    );
  }
}
