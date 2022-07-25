import 'package:flutter/material.dart';
import 'package:petology/presentation/resources/routes/web_route_names.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ElevatedButton(
            child: Text('SignIn'),
            onPressed: () {
              Navigator.of(context).pushNamed(WebRouteNames.signUpRoute);
            }),
      ),
    );
  }
}
