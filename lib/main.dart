import 'package:evrikart_assignment/widgets/bottom_tabs.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'Atiga',
         primaryColor: Colors.yellow[600]),
        home: BottomTabs());
  }
}
