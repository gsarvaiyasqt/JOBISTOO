
import 'package:flutter/cupertino.dart';
import 'package:jobisto/app/tab/view/dashboard_screen.dart';

class TabRoute{

  static String tabRoute = "/tab";

  static Widget get tabChild => const DashBoardScreen();

  static goToTabPage(BuildContext context){
    Navigator.of(context).pushNamed(tabRoute);
  }
}