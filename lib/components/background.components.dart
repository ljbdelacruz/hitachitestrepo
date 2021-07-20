


import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hitachitest/base/base.component.dart';
import 'package:hitachitest/util/color.util.dart';

class BackgroundComponent extends BaseComponent{
 Widget background(BuildContext context, Widget content,{Widget header, double headerHeight=0, Widget footer, Widget drawer, Widget endDrawer}){
    return SafeArea(child:Scaffold(
          appBar:PreferredSize(preferredSize: Size.fromHeight(headerHeight) , child: header != null ? header : Container()),
          body:Container(
            color:backgroundColor,
            width:MediaQuery.of(context).size.width,
            height:MediaQuery.of(context).size.height,
            child:content),
          bottomNavigationBar: footer,
          drawer: drawer,
          endDrawer: endDrawer,
        )
    );
  } 
}