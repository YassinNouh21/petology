import 'package:flutter/material.dart';
import 'package:petology/presentation/pages/about_us/about_us_page.dart';
import 'package:petology/presentation/pages/adaptation/adaptation_page.dart';
import 'package:petology/presentation/pages/adaptation_info/adaptation_info_page.dart';
import 'package:petology/presentation/pages/not_found/not_found_page.dart';
import 'package:petology/presentation/pages/pet_info/pet_info_page.dart';
import 'package:petology/presentation/pages/request/request_page.dart';
import 'package:petology/presentation/pages/service/service_page.dart';
import 'package:petology/presentation/pages/sign_in/sign_in_page.dart';
import 'package:petology/presentation/pages/sign_up/sign_up_page.dart';
import 'package:petology/presentation/resources/routes/web_route_names.dart';

//FIXME: This is a temporary solution to generate routes I have problem in # in url .
class WebGenerateRoute {
  Route<dynamic> generateRoute(RouteSettings settings) {
    var uri = Uri.parse(settings.name!);
    switch (uri.path) {
      case WebRouteNames.signInRoute:
        return MaterialPageRoute(builder: (_) => SignInPage());
      case WebRouteNames.signUpRoute:
        return MaterialPageRoute(builder: (_) => SignUpPage());
      case WebRouteNames.aboutUsRoute:
        return MaterialPageRoute(builder: (_) => AboutUsPage());
      case WebRouteNames.petInfoRoute:
        return MaterialPageRoute(builder: (_) => PetInfoPage());
      case WebRouteNames.serviceRoute:
        return MaterialPageRoute(builder: (_) => ServicePage());
      case WebRouteNames.requestRoute:
        return MaterialPageRoute(builder: (_) => RequestPage());
      case WebRouteNames.adaptationInfoRoute:
        return MaterialPageRoute(builder: (_) => AdaptationInfoPage());
      case WebRouteNames.adaptationRoute:
        return MaterialPageRoute(builder: (_) => AdaptationPage());
      default:
        return MaterialPageRoute(builder: (_) => NotfoundPage());
    }
  }
}
