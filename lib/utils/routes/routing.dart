import 'package:flutter/material.dart';
import 'package:jobisto/app/auth/route/auth_route.dart';
import 'package:jobisto/app/menu/route/menu_route.dart';
import 'package:jobisto/app/presentation/route/lending_route.dart';
import 'package:jobisto/app/tab/route/tab_route.dart';
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
    TabSettingsRoute.becomeAJobberRoute:(context) => TabSettingsRoute.becomeAJobberChild,
    TabOrderRoute.orderDetailRoute : (context) => TabOrderRoute.becomeAJobberChild,
    TabOrderRoute.jobberProfileRoute : (context) => TabOrderRoute.myJobberProfileChild,
    TabOrderRoute.jobberTalkRoute : (context) => TabOrderRoute.jobberTalkChild,
    MenuRoute.jobberBusinessRoute:(context) => MenuRoute.jobberServiceChild,
    MenuRoute.jobberServiceRoute:(context) => MenuRoute.jobberBusinessChild,
    TabSellerRoute.manageJobScreenRoute:(context) => TabSellerRoute.manageJobScreenChild,
    TabSellerRoute.jobDetailsScreenRoute:(context) => TabSellerRoute.jobDetailsChild,
    TabSellerRoute.jobRequestScreenRoute:(context) => TabSellerRoute.jobRequestScreenChild,
    TabSellerRoute.managedJobSubDetailsScreenRoute:(context) => TabSellerRoute.managedJobSubDetailsChild,
    TabSellerRoute.jobsApplyScreenRoute:(context) => TabSellerRoute.jobsApplyScreenChild,
    TabSellerRoute.portfolioScreenRoute:(context) => TabSellerRoute.portfolioScreenChild,
    TabOrderRoute.orderDetailRoute : (context) => TabOrderRoute.becomeAJobberChild,
  };
}