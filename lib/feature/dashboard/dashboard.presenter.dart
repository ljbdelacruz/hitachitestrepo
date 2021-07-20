


import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:hitachitest/base/base.presenter.dart';
import 'package:hitachitest/base/global.controller.dart';
import 'package:hitachitest/feature/dashboard/dashboard.controller.dart';
import 'package:hitachitest/util/color.util.dart';

class DashboardPresenter extends BasePresenter{
  final DashboardController pageC = Get.put(DashboardController());



  Widget userInfoHeader(BuildContext context){
    return GetBuilder<GlobalController>(
      init:GlobalController(),
      builder:(_){
      return Container(
        decoration: BoxDecoration(
          color: secondary4Color,
          borderRadius: BorderRadius.only(bottomLeft:Radius.circular(40), bottomRight:Radius.circular(40))
        ),
        width:MediaQuery.of(context).size.width,
        padding:EdgeInsets.only(top:30, bottom:30, right:20, left:20),
        child: Column(children:[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:[
            InkWell(onTap:(){
              
            }, child:Image.asset("assets/menu.png")),
            buttonC.dashboardUserProfileButton(context, image: _.userInfo.profilePhoto, radius:20, event:(){

            }),
          ]),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          Container(
            width:MediaQuery.of(context).size.width,
            padding:EdgeInsets.only(left:40, right:40),
            child:Text(_.greetings()+"\n"+_.userInfo.name, style: styleUtil.textBold(fontSz: 25, tColor: nameColor))
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          Container(
            width:MediaQuery.of(context).size.width,
            padding:EdgeInsets.only(left:40, right:40),
            child:Text(_.targetGoals(), style: styleUtil.textNormal(fontSz: 13, tColor: secondary2Color))
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          Container(
            width:MediaQuery.of(context).size.width,
            padding:EdgeInsets.only(left:40, right:40),
            child: Row(children:[
              buttonC.dashboardButton("MORE DETAILS", context, (){}, bgColor: nameColor, tColor: Colors.white),
              SizedBox(width:MediaQuery.of(context).size.width * 0.02),
              buttonC.dashboardButton("VIEW YOUR PROFILE", context, (){}, bgColor: graidentColor1, tColor: Colors.white)
            ])
          )



        ])
      );
    });
  }
}