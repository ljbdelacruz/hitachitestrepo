






import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hitachitest/feature/welcome/welcome.presenter.dart';
import 'package:hitachitest/util/color.util.dart';

import 'login.presenter.dart';

class LoginPage extends StatefulWidget {
  final LoginPresenter presenter = LoginPresenter();

  LoginPage();
  @override
  LoginPageState createState(){
    return LoginPageState();
  }
}

class LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return widget.presenter.backgroundC.background(context, SingleChildScrollView(child:Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:[
        SizedBox(height:MediaQuery.of(context).size.height * 0.05),
        Container(
          width:MediaQuery.of(context).size.width,
          padding:EdgeInsets.only(left:20, right:20),
          child:
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[
              Icon(Icons.arrow_back, color: nameColor),
              Image.asset("assets/icon.png", width:MediaQuery.of(context).size.width / 4),
              SizedBox(width:10),
            ])
        ),
        SizedBox(height:MediaQuery.of(context).size.height * 0.05),
        Text("Login", style: widget.presenter.styleUtil.textBold(fontSz: 17, tColor: nameColor)),
        SizedBox(height:MediaQuery.of(context).size.height * 0.01),
        Text("Enter your login details to\naccess your account", textAlign:TextAlign.center, style: widget.presenter.styleUtil.textNormal(fontSz: 13, tColor: secondary2Color)),

        widget.presenter.buttonC.loginButton("LOG IN", context, (){
          
        }, tColor: Colors.white),





    ])));
  }

  
}