


import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'color.util.dart';

class TextStyleUtil{
  TextStyle get itemCellAvailable{
    return TextStyle(color:Colors.yellow, fontSize: 9);
  }
  TextStyle get itemCellUnavailable{
    return TextStyle(color:Colors.red, fontSize: 9);
  }
  TextStyle get productTitle{
    return TextStyle(color:textColor, fontSize: 9);
  }
  TextStyle get productPrice{
    return TextStyle(color:textColor, fontSize: 12);
  }
  TextStyle wUITextFieldLabel({Color color = textColor, double fontSz = 10}){
    return TextStyle(color:color, fontSize:fontSz, fontWeight: FontWeight.bold);
  }

  TextStyle alertBtn(fontSize, Color color){
    return TextStyle(fontWeight: FontWeight.bold, fontSize: fontSize, color: color);
  }
  TextStyle normal(double fontSize, Color color){
    return TextStyle(fontSize: fontSize, color:color);
  }

  TextStyle textBold({double fontSz=10, Color tColor = textColor}){
    return TextStyle(fontSize:fontSz, fontWeight: FontWeight.bold, color: tColor);
  }
  TextStyle textNormal({double fontSz=10, Color tColor = textColor}){
    return TextStyle(fontSize:fontSz, color: tColor);
  }
  TextStyle textDemi({double fontSz=10, Color tColor = textColor}){
    return TextStyle(fontSize:fontSz, color: tColor, fontWeight: FontWeight.bold);
  }
  TextStyle textUnderlinedNormal({double fontSz=10, Color tColor = textColor}){
    return TextStyle(fontSize:fontSz, color: tColor, decoration: TextDecoration.underline);
  }
}