import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:petology/presentation/resources/theme/Web_color.dart';
import 'package:petology/presentation/resources/theme/web_font_style.dart';

ThemeData getWebTheme(BuildContext context) {
  return ThemeData(
    primaryColor: WebColor.primaryColor,
    scaffoldBackgroundColor: Colors.white,
    colorScheme: const ColorScheme(
      primary: WebColor.primaryColor,
      secondary: WebColor.secondaryColor,
      onPrimary: WebColor.onPrimaryColor,
      onSecondary: WebColor.onSecondaryColor,
      background: WebColor.backgroundColor,
      brightness: Brightness.light,
      error: WebColor.errorColor,
      onError: WebColor.onErrorColor,
      onBackground: Colors.white,
      surface: WebColor.surfaceColor,
      onSurface: WebColor.onSurfaceColor,
    ),
    appBarTheme: const AppBarTheme(
      color: Colors.white,
      elevation: 0,
    ),
    inputDecorationTheme: InputDecorationTheme(
      labelStyle: Theme.of(context).textTheme.labelSmall!.copyWith(
            color: WebColor.primaryColor.withOpacity(0.5),
            fontWeight: FontWeight.bold,
          ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(40.r),
        borderSide: const BorderSide(
          color: WebColor.onSurfaceColor,
        ),
      ),
    ),
    textTheme: TextTheme(
      headline2:
          WebFontStyle().getRegularStyle(color: Colors.black, size: 81.sp),
      headline3: WebFontStyle().getBoldStyle(color: Colors.black, size: 54.sp),
      headline4: WebFontStyle()
          .getRegularStyle(color: Colors.black, size: ScreenUtil().setSp(46)),
      headline5:
          WebFontStyle().getRegularStyle(color: Colors.black, size: 40.sp),
      bodyText1:
          WebFontStyle().getRegularStyle(color: Colors.black, size: 50.sp),
      bodyText2:
          WebFontStyle().getRegularStyle(color: Colors.black, size: 20.sp),
      subtitle1:
          WebFontStyle().getRegularStyle(color: Colors.black, size: 81.sp),
      subtitle2:
          WebFontStyle().getRegularStyle(color: Colors.black, size: 81.sp),
      labelSmall:
          WebFontStyle().getRegularStyle(color: Colors.black, size: 24.sp),
      overline:
          WebFontStyle().getRegularStyle(color: Colors.black, size: 20.sp),
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}
