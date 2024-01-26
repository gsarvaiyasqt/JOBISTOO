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

  Offset offset = Offset(10, 0);

  GlobalKey swipeWidgetKey = GlobalKey();

  Size? getSwipeWidgetSize() {
    final State? state = swipeWidgetKey.currentState;
    //returns null:
    final BuildContext? context = swipeWidgetKey.currentContext;

    //Error: The getter 'context' was called on null.
    final RenderBox? box = state?.context.findRenderObject() as RenderBox?;

    return box?.size;

  }

  @override
  Widget build(BuildContext context) {

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
              child: LayoutBuilder(
                builder: (context, constraints) {
                  final width = constraints.maxWidth;
                  return GestureDetector(
                    onHorizontalDragEnd: (details) async {
                      // Haptic
                      final middle = MediaQuery.sizeOf(context).width/2;
                      if (offset.dx > middle) {
                        final boxWidth = getSwipeWidgetSize()?.width ?? 50;
                        final dx = width - (boxWidth);
                        setState(() {
                          offset = Offset(dx, 0);
                        });
                        // Go to next screen
                        await Future.delayed(const Duration(milliseconds: 100));
                        AuthRoute.goToLoginPage(context);
                      } else {
                        setState(() {
                          offset = Offset(10, 0);
                        });
                      }
                    },
                    onHorizontalDragUpdate: (details) {
                      setState(() {

                        final height = getSwipeWidgetSize()?.height ?? 50;
                        final boxWidth = height - (20.sp);
                        final maxDx = width - (10.sp + boxWidth);

                        if(details.localPosition.dx < 10){
                          offset = Offset(10, 0);
                        } else if(details.localPosition.dx > maxDx) {
                          offset = Offset(maxDx, 0);
                        } else {
                          offset = details.localPosition;
                        }

                      });
                    },
                    child: Stack(
                      children: [

                        Container(
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

                            ],
                          ),
                        ),

                        Positioned(
                          top: 10.sp,
                          left: offset.dx,
                          child: Container(
                            key: swipeWidgetKey,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100.sp),
                              color: kPrimaryColor,
                            ),
                            padding: EdgeInsets.all(10.sp),
                            child: SizedBox(
                                child: ImageUtil.iconImageClass.crossArrowIconMain),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),

            SizedBox(height: 20.sp,)
          ],
        )
      ),
    );
  }
}
