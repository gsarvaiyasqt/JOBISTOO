import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jobisto/app/auth/view/login_screen.dart';
import 'package:jobisto/app/presentation/route/lending_route.dart';
import 'package:jobisto/app/tab/view_model/dashboard_provider.dart';
import 'package:jobisto/utils/routes/routing.dart';
import 'package:jobisto/utils/utils.dart';
import 'package:provider/provider.dart';

class JobistoApp extends StatelessWidget {
  const JobistoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => TabIndexProvider(),)
      ],
      child: Sizer(
        builder: (context, orientation, deviceType) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'JOBISTO',
            theme: appTheme(context),
            routes: Routes().routes,
            initialRoute: PresentationRoute.introRoute,
          );
        },
      ),
    );
  }

ThemeData appTheme(BuildContext context){
  return ThemeData(
    appBarTheme: AppBarTheme.of(context).copyWith(
      scrolledUnderElevation: 0.0,
      centerTitle: false,
      backgroundColor: Colors.transparent,
      elevation: 0,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Colors.transparent,
        // statusBarIconBrightness: Brightness.light,
      ),
    ),
    fontFamily: "Sora"
  );
  }
}
