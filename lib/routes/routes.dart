


import 'package:flutter/widgets.dart';
import 'package:hitachitest/feature/dashboard/dashboard.page.dart';
import 'package:hitachitest/feature/login/login.page.dart';
import 'package:hitachitest/feature/welcome/welcome.page.dart';


const String welcomeRoute="/welcome";
const String loginRoute="/login";
const String dashboardRoute="/dashboard";

dynamic routesList(BuildContext context){
  return {
    welcomeRoute: (context) => WelcomePage(),
    loginRoute: (context) => LoginPage(),
    dashboardRoute: (context) => DashboardPage()
  };
}