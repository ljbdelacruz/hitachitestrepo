






import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hitachitest/feature/welcome/welcome.presenter.dart';
import 'package:hitachitest/util/color.util.dart';

class WelcomePage extends StatefulWidget {
  final WelcomePresenter presenter = WelcomePresenter();

  WelcomePage();
  @override
  WelcomePageState createState(){
    return WelcomePageState();
  }
}

class WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return widget.presenter.backgroundC.background(context, SingleChildScrollView(child:Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:[
      SizedBox(height:MediaQuery.of(context).size.height * 0.05),
      Image.asset("assets/icon.png", width:MediaQuery.of(context).size.width * 0.4, height: MediaQuery.of(context).size.height * 0.07),
      Text("This is Health UX Kit,\nWelcome!", textAlign: TextAlign.center, style: widget.presenter.styleUtil.textBold(fontSz: 21, tColor: nameColor)),
      SizedBox(height:MediaQuery.of(context).size.height * 0.03),
      Text("A health vertical UI kit made with\nlove for Adobe XD", textAlign: TextAlign.center, style: widget.presenter.styleUtil.textNormal(fontSz: 13, tColor: secondary2Color)),
      Image.asset("assets/doctor.png", width:MediaQuery.of(context).size.width * 0.8, height: MediaQuery.of(context).size.height * 0.4),
      SizedBox(height:MediaQuery.of(context).size.height * 0.1),
      widget.presenter.buttonC.loginButton("GET STARTED", context, (){
        widget.presenter.pageC.toLoginPage(context);
      }, tColor: Colors.white),
      SizedBox(height:MediaQuery.of(context).size.height * 0.02),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
        Text("Already have an account?", style: widget.presenter.styleUtil.textNormal(fontSz: 13, tColor: secondary2Color)),
        InkWell(onTap:(){

        }, child:Text("Sign In", style: widget.presenter.styleUtil.textNormal(fontSz: 13, tColor: nameColor)))
      ])

    ])));
  }

  
}