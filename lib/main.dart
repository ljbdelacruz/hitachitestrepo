import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hitachitest/feature/test.page.dart';
import 'package:hitachitest/feature/welcome/welcome.page.dart';
import 'package:hitachitest/util/color.util.dart';

import 'routes/routes.dart';

void main() async {
  runZoned<Future<void>>(() async {
    runApp(MyApp());
  });
}

class MyApp extends StatefulWidget{
  MyApp();
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {

  final _navigatorKey = GlobalKey<NavigatorState>();

  @override
  void initState() { 
    super.initState();
  }

  void _handleUserInteraction([_]) {
  }


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: _handleUserInteraction,
      onPanDown: _handleUserInteraction,
      child:
        MaterialApp(
          title: 'HitachiTest',
          navigatorKey: _navigatorKey,
          routes: routesList(context),
          theme: ThemeData(
            primarySwatch: Colors.deepPurple,
            canvasColor: backgroundColor,
          ),
          home: WelcomePage()
          // home:TestPage()
        ));
  }
}
