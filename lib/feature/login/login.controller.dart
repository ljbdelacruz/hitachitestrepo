



import 'package:flutter/material.dart';
import 'package:hitachitest/base/base.controller.dart';

class LoginController extends BaseController{
  TextEditingController emailC = new TextEditingController();
  TextEditingController passwordC = new TextEditingController();
  bool isValidEmail = false;
  bool isPasswordFilled=false;
  

  loginEvent(BuildContext context){
    toDashboardPage(context);
  }
}