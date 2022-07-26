import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CountryDropDownMenu extends StatefulWidget {
  const CountryDropDownMenu({Key? key}) : super(key: key);

  @override
  State<CountryDropDownMenu> createState() => _CountryDropDownMenuState();
}

class _CountryDropDownMenuState extends State<CountryDropDownMenu> {
  @override
  Widget build(BuildContext context) {
    return DropdownMenuItem(child: Text('Country'));
  }
}
