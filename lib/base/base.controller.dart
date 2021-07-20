


import 'package:flutter/cupertino.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:hitachitest/routes/routes.dart';

class BaseController extends GetxController{

  popUntil(BuildContext context, String myRoute){
      Navigator.of(context).popUntil((route) => route.settings.name == myRoute);
  }
  popPage(BuildContext context){
    Navigator.pop(context);
  }

  toWelcomePage(BuildContext context){
    Navigator.pushNamed(context, welcomeRoute);
  }
  toLoginPage(BuildContext context){
    Navigator.pushNamed(context, loginRoute);
  }
  toDashboardPage(BuildContext context){
    Navigator.pushNamed(context, dashboardRoute);
  }
}

