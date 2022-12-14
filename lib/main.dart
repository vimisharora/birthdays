import 'package:birthdays/screens/birthdays_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApps());

class MyApps extends StatelessWidget {
  const MyApps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const MaterialApp(
        home: BirthdayScreen(),
    );
  }
}