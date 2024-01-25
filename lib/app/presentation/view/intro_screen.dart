import 'package:flutter/material.dart';
import 'package:jobisto/app/auth/route/auth_route.dart';
import 'package:jobisto/base/common_components/custom/custom_background.dart';
import 'package:jobisto/utils/utils.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBody: true,
      body: CustomBackGround(
        childBody: Column(
          children: [
            // SizedBox(height: MediaQuery.of(context).padding.top +21.sp),

            Expanded(
              child: ImageUtil.logo.subLogo,
            ),

            // SizedBox(height:  MediaQuery.of(context).size.height / 17),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 53.sp),
              child: Text.rich(
                textAlign: TextAlign.center,
                TextSpan(
                    text: "JOBISTO",
                    style: CustomTextStyle.yellowSemiBoldFont18Style,
                    children: [
                      TextSpan(
                          text: " is a place where those of us with skills and something to offer the world can be heard and seen by those who need us.",
                          style: CustomTextStyle.lightFont18Style
                      )
                    ]
                ),
              ),
            ),

            SizedBox(height:  20.sp),

            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 20.sp),
              child: InkWell(
                onTap: () {
                  AuthRoute.goToLoginPage(context);
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: kDarkGreyColor,
                      borderRadius: BorderRadius.circular(100.sp)
                  ),
                  padding: EdgeInsets.fromLTRB(49.sp, 5.sp, 5.sp, 5.sp),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 17.sp),
                        child: Text("Swipe to get started",style: CustomTextStyle.regularFont16Style,),
                      ),

                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.sp),
                        child: SizedBox(
                            height: 24.sp,
                            width: 40.sp,
                            child: ImageUtil.iconImageClass.swipeIcon),
                      ),

                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.sp),
                          color: kPrimaryColor,
                        ),
                        padding: EdgeInsets.all(10.sp),
                        child: SizedBox(
                            child: ImageUtil.iconImageClass.crossArrowIconMain),
                      ),

                    ],
                  ),
                ),
              ),
            ),

            SizedBox(height: 20.sp,)
          ],
        )
      ),
    );
  }
}
