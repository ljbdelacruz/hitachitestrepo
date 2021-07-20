


import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:hitachitest/base/base.controller.dart';
import 'package:hitachitest/base/base.presenter.dart';



class TestController extends BaseController {
}

class TestPresenter extends BasePresenter{
  final TestController pageC = Get.put(TestController());

}



class TestPage extends StatefulWidget {
  final TestPresenter presenter = TestPresenter();
  TestPage();
  @override
  TestPageState createState(){
    return TestPageState();
  }
}

class TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return widget.presenter.backgroundC.background(context, SingleChildScrollView(child:Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:[
        InkWell(onTap:(){
          widget.presenter.pageC.toWelcomePage(context);
        }, child: Text("Test Page"))
      
    ])));
  }

  
}