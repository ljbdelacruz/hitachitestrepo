


import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:hitachitest/base/base.presenter.dart';

import 'login.controller.dart';

class LoginPresenter extends BasePresenter{
  final LoginController pageC = Get.put(LoginController());

  Widget presenterForm(BuildContext context){
    return GetBuilder<LoginController>(builder:(_){
      return Column(children:[
        
      ]);
    });
  }
}