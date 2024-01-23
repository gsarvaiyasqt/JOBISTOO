import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobisto/app/tab/view_model/dashboard_provider.dart';
import 'package:jobisto/app/tab_home/view/home_screen.dart';
import 'package:jobisto/app/tab_orders/view/orders_screen.dart';
import 'package:jobisto/app/tab_seller/view/seller_screen.dart';
import 'package:jobisto/app/tab_settings/view/settings_screen.dart';
import 'package:jobisto/utils/utils.dart';
import 'package:provider/provider.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  @override
  Widget build(BuildContext context) {
    final tabIndexProvider = context.watch<TabIndexProvider>();
    final currentIndex = tabIndexProvider.currentIndex;
    return Scaffold(

      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      extendBody: true,

      body: Stack(
        fit: StackFit.expand,
        children: [
          IndexedStack(
            index: tabIndexProvider.currentIndex,
            children: [
              HomeScreen(),
              SellerScreen(),
              OrderScreen(),
              SettingsScreen(),
            ],
          ),
        ],
      ),
      backgroundColor: Colors.transparent,

      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(30.sp),topRight: Radius.circular(30.sp)),

        child: Container(
          color: Colors.transparent,
          margin: EdgeInsets.only(top: 10.sp),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30.sp),topRight: Radius.circular(30.sp)),
                child: BackdropFilter(
                  filter:  ImageFilter.blur(sigmaX: 80.sp, sigmaY: 80.sp),

                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.only(right: 10.sp,left: 10.sp),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xff19262E),
                      ),
                      color: Color(0xff19212F).withOpacity(0.30),
                      // color: kPrimaryColor,
                      // borderRadius: BorderRadius.only(topLeft: Radius.circular(30.sp),topRight: Radius.circular(30.sp)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      mainAxisSize: MainAxisSize.min,
                      children:List.generate(tabList.length, (index) {
                        return Padding(
                          padding: EdgeInsets.only(right: 0.sp),
                          child: InkWell(
                            onTap: (){
                              setState(() {
                                tabIndexProvider.tabChangeIndex(index: index);
                                FocusManager.instance.primaryFocus?.unfocus();
                              });
                            },
                            child: Padding(
                                padding: EdgeInsets.only(top: 0.sp,bottom: 11.sp),
                                child: Column(
                                  children: [
                                    index == currentIndex ?
                                    Container(
                                      height: 5.sp,
                                      width: 20.sp,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(30.sp),
                                          bottomRight: Radius.circular(30.sp)
                                        )
                                      ),
                                    ) : SizedBox.shrink(),
                                    Container(
                                        padding: EdgeInsets.all(10.sp),
                                        margin: EdgeInsets.symmetric(horizontal: 20.sp),
                                        child: SvgPicture.asset("$iconPath${tabList[index].icon}",color: index == currentIndex ? kSecondaryColor : kTabColor)
                                    ),
                                    Text(tabList[index].text ?? "",style: index == currentIndex ? CustomTextStyle.regularFont12Style : CustomTextStyle.regularFont12Style.copyWith(color: kTabColor) ,)
                                  ],
                                )
                            ),
                          ),
                        );
                      }),
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

class IconTextData{
  String? icon;
  String? text;

  IconTextData({this.icon,this.text});
}

List<IconTextData> tabList = [
  IconTextData(
    icon: "/home.svg",
    text: "Home"
  ),
  IconTextData(
    icon: "/seller.svg",
    text: "Seller"
  ),
  IconTextData(
    icon: "/orders.svg",
    text: "Orders"
  ),
  IconTextData(
    icon: "/settings.svg",
    text: "Settings"
  )
];
