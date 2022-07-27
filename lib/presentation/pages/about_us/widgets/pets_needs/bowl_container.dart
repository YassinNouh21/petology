import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../resources/theme/Web_color.dart';

class BowlContainer extends StatelessWidget {
  final String title;
  final String imgUrl;
  const BowlContainer({
    Key? key,
    required this.title,
    required this.imgUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150.w,
      height: 480.h,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: CircleAvatar(
              radius: 80.w,
              backgroundColor: WebColor.primaryColor,
              child: Container(
                padding: EdgeInsets.only(top: 60.h, left: 15.w, right: 15.w),
                child: Center(
                  child: Text(
                    title,
                    textAlign: TextAlign.center,
                    maxLines: 1,
                    style: Theme.of(context).textTheme.headline6?.copyWith(
                          color: Colors.white,
                        ),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Image.network(
              imgUrl,
              fit: BoxFit.scaleDown,
              width: 80.w,
            ),
          ),
        ],
      ),
    );
  }
}
