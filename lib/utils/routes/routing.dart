import 'package:flutter/material.dart';
import 'package:jobisto/app/auth/route/auth_route.dart';
import 'package:jobisto/app/menu/route/menu_route.dart';
import 'package:jobisto/app/presentation/route/lending_route.dart';
import 'package:jobisto/app/tab/route/tab_route.dart';
import 'package:jobisto/app/tab_settings/route/tab_settings_route.dart';

class Routes {
  Map<String, WidgetBuilder> routes = {
    PresentationRoute.introRoute:(context) => PresentationRoute.introChild,
    AuthRoute.loginRoute:(context) => AuthRoute.loginChild,
    AuthRoute.registrationRoute:(context) => AuthRoute.registrationChild,
    AuthRoute.forgetPasswordRoute:(context) => AuthRoute.forgetPasswordChild,
    AuthRoute.changePasswordRoute:(context) => AuthRoute.changePasswordChild,
    TabRoute.tabRoute:(context) => TabRoute.tabChild,
    TabSettingsRoute.becomeAJobberRoute:(context) => TabSettingsRoute.becomeAJobberChild,
    MenuRoute.jobberBusinessRoute:(context) => MenuRoute.jobberServiceChild,
    MenuRoute.jobberServiceRoute:(context) => MenuRoute.jobberBusinessChild,
  };
}