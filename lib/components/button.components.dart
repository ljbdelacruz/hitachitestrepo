



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
}

typedef ButtonComponentsEvent();