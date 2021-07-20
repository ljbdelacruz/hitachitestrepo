import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hitachitest/base/base.component.dart';
import 'package:hitachitest/util/color.util.dart';

class ButtonComponents extends BaseComponent{

  Widget loginButton(String text, BuildContext context, ButtonComponentsEvent event, {Color bgColor=gradientColor2, Color tColor = textColor, double width = 0}){
    if(width == 0){
      width = MediaQuery.of(context).size.width-100;
    }
    return InkWell(onTap:(){
      event();
    }, child: Container(
      decoration: BoxDecoration(
        color:bgColor,
        borderRadius: BorderRadius.all(Radius.circular(15))
      ),
      width:width,
      padding:EdgeInsets.only(top:10, bottom:10),
      child:Text(text, textAlign:TextAlign.center, style: styleUtil.textBold(fontSz:13, tColor: tColor))));
  }
  Widget dashboardButton(String text, BuildContext context, ButtonComponentsEvent event, {Color bgColor=gradientColor2, Color tColor = textColor, double fontSz=8}){
    return InkWell(onTap:(){
      event();
    }, child: Container(
      padding:EdgeInsets.only(left:10, right:10, top: 5, bottom:5),
      decoration: BoxDecoration(
        color:bgColor,
        borderRadius: BorderRadius.all(Radius.circular(100))
      ),
      child:Text(text, textAlign:TextAlign.center, style: styleUtil.textBold(fontSz:fontSz, tColor: tColor))));
  }


  Widget dashboardUserProfileButton(BuildContext context, {String image="", double radius=30, ButtonComponentsEvent event}){
    return InkWell(onTap:(){
      if(event != null){
        event();
      }
    }, child:CircleAvatar(
                  radius: radius,
                  backgroundImage:NetworkImage(image),
                  backgroundColor: Colors.transparent,
    ));
  }
}

typedef ButtonComponentsEvent();