import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:petology/injectable.dart';
import 'my_app.dart';

Future<void> main() {
  return BlocOverrides.runZoned(
    () async {
      configureDependencies();
      WidgetsFlutterBinding.ensureInitialized();
      runApp(MyApp());
    },
  );
}
