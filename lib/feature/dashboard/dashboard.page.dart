









import 'package:flutter/widgets.dart';
import 'package:hitachitest/feature/dashboard/dashboard.presenter.dart';


class DashboardPage extends StatefulWidget {
  final DashboardPresenter presenter = DashboardPresenter();

  DashboardPage();
  @override
  DashboardPageState createState(){
    return DashboardPageState();
  }
}

class DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return widget.presenter.backgroundC.background(context, SingleChildScrollView(child:Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:[
        Image.asset("assets/icon.png", width:MediaQuery.of(context).size.width / 4),
    ])));
  }

  
}