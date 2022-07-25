import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:petology/presentation/resources/routes/web_generate_route.dart';
import 'package:petology/presentation/resources/routes/web_route_names.dart';

class MyApp extends StatelessWidget {
  static const instance = MyApp._private();
  const MyApp._private();
  factory MyApp() => instance;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      designSize: const Size(1920, 2510),
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          title: 'Petology',
          theme: ThemeData(),
          initialRoute: WebRouteNames.signInRoute,
          onGenerateRoute: WebGenerateRoute().generateRoute,
        );
      },
    );
  }
}
