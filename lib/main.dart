import 'package:birthdays/screens/birthdays_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApps());

class MyApps extends StatelessWidget {
   MyApps({Key? key}) : super(key: key);
  final names=[];
  final birthdays=[];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const MaterialApp(
        home: BirthdayScreen(names,birthdays),
    );
  }
}