import 'package:flutter/material.dart';
import 'package:petology/presentation/resources/routes/web_generate_route.dart';
import 'package:petology/presentation/resources/routes/web_route_names.dart';

class MyApp extends StatelessWidget {
  static const instance = MyApp._private();
  const MyApp._private();
  factory MyApp() => instance;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      
      initialRoute: WebRouteNames.signInRoute,
      onGenerateRoute: WebGenerateRoute().generateRoute,
    );
  }
}
