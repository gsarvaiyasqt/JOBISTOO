import 'package:flutter/material.dart';
import 'package:jobisto/app/auth/route/auth_route.dart';
import 'package:jobisto/app/menu/route/menu_route.dart';
import 'package:jobisto/app/presentation/route/lending_route.dart';
import 'package:jobisto/app/tab/route/tab_route.dart';
import 'package:jobisto/app/tab_home/route/home_route.dart';
import 'package:jobisto/app/tab_orders/route/order_route.dart';
import 'package:jobisto/app/tab_settings/route/tab_settings_route.dart';

import '../../app/tab_seller/route/tab_seller_route.dart';

class Routes {
  Map<String, WidgetBuilder> routes = {
    PresentationRoute.introRoute:(context) => PresentationRoute.introChild,
    AuthRoute.loginRoute:(context) => AuthRoute.loginChild,
    AuthRoute.registrationRoute:(context) => AuthRoute.registrationChild,
    AuthRoute.forgetPasswordRoute:(context) => AuthRoute.forgetPasswordChild,
    AuthRoute.changePasswordRoute:(context) => AuthRoute.changePasswordChild,
    TabRoute.tabRoute:(context) => TabRoute.tabChild,
    MenuRoute.becomeAJobberRoute:(context) => MenuRoute.becomeAJobberChild,
    TabOrderRoute.orderDetailRoute : (context) => TabOrderRoute.becomeAJobberChild,
    TabOrderRoute.jobberProfileRoute : (context) => TabOrderRoute.myJobberProfileChild,
    TabOrderRoute.jobberTalkRoute : (context) => TabOrderRoute.jobberTalkChild,
    MenuRoute.jobberBusinessRoute:(context) => MenuRoute.jobberServiceChild,
    MenuRoute.jobberServiceRoute:(context) => MenuRoute.jobberBusinessChild,

    MenuRoute.menuBusinessRoute:(context) => MenuRoute.menuBusinessChild,
    MenuRoute.myBusinessServiceRoute:(context) => MenuRoute.myBusinessServiceChild,
    MenuRoute.myJobistoTeamRoute:(context) => MenuRoute.myJobistoTeamChild,
    MenuRoute.myJobistoProfileRoute:(context) => MenuRoute.myJobistoProfileChild,
    MenuRoute.myBusinessServiceRoute:(context) => MenuRoute.myBusinessServiceChild,
    MenuRoute.addProductScreenRoute:(context) => MenuRoute.addProductScreenChild,
    MenuRoute.myProductScreenRoute:(context) => MenuRoute.myProductScreenChild,

    MenuRoute.menuSellerRoute:(context) => MenuRoute.menuSellerChild,
    MenuRoute.myJobistoRoute:(context) => MenuRoute.myJobistoChild,
    MenuRoute.myServiceRoute:(context) => MenuRoute.myServiceChild,
    MenuRoute.myDoneJobsRoute:(context) => MenuRoute.myDoneJobsChild,
    MenuRoute.addDoneJobsRoute:(context) => MenuRoute.addDoneJobsChild,
    MenuRoute.jobDoneDetailsRoute:(context) => MenuRoute.jobDoneDetailsChild,
    TabSellerRoute.manageJobScreenRoute:(context) => TabSellerRoute.manageJobScreenChild,
    TabSellerRoute.jobDetailsScreenRoute:(context) => TabSellerRoute.jobDetailsChild,
    TabSellerRoute.jobRequestScreenRoute:(context) => TabSellerRoute.jobRequestScreenChild,
    TabSellerRoute.managedJobSubDetailsScreenRoute:(context) => TabSellerRoute.managedJobSubDetailsChild,
    TabSellerRoute.jobsApplyScreenRoute:(context) => TabSellerRoute.jobsApplyScreenChild,
    TabSellerRoute.portfolioScreenRoute:(context) => TabSellerRoute.portfolioScreenChild,
    TabOrderRoute.orderDetailRoute : (context) => TabOrderRoute.becomeAJobberChild,
    TabHomeRoute.topJobDetailsRoute:(context) => TabHomeRoute.topJobDetailsChild,
    TabHomeRoute.bookServiceDetailsRoute:(context) => TabHomeRoute.bookServiceDetailsChild,
    TabHomeRoute.bookServiceRoute:(context) => TabHomeRoute.bookServiceChild,
    TabHomeRoute.myJobistoProfileRoute:(context) => TabHomeRoute.myJobistoProfileChild,
    TabHomeRoute.createJobScreenRoute:(context) => TabHomeRoute.createJobScreenChild,
    TabHomeRoute.requirementScreenRoute:(context) => TabHomeRoute.requirementScreenChild,
    TabHomeRoute.takeTheJobScreenRoute:(context) => TabHomeRoute.takeTheJobScreenChild,
    TabHomeRoute.jobConfirmedScreenRoute:(context) => TabHomeRoute.jobConfirmedScreenChild,
    TabHomeRoute.portfolioHomePaintRoute:(context) => TabHomeRoute.portfolioHomePaintChild
  };
}