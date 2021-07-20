


import 'package:hitachitest/base/model/model.dart';

import 'base.controller.dart';

class GlobalController extends BaseController {
  UserInfo userInfo = UserInfo();





  String greetings(){
    var time=DateTime.now();
    if(time.hour >= 1 &&  time.hour < 12){
      return "Good Morning";
    }else if(time.hour >= 12 &&  time.hour <= 18){
      return "Good Afternoon";
    }else{
      return "Good Evening";
    }
  }

  String targetGoals(){
    return "Your target for today is to keep positive mindset and smile to everyone you meet.";
  }


}