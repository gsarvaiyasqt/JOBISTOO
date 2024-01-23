import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobisto/app/tab_settings/components/custom_settings_background.dart';
import 'package:jobisto/app/tab_settings/domain/models/settings_model.dart';
import 'package:jobisto/app/tab_settings/route/tab_settings_route.dart';
import 'package:jobisto/base/common_components/custom/custom_button.dart';
import 'package:jobisto/utils/utils.dart';

import '../../menu/route/menu_route.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  int? currentIndex;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text("Settings",style: CustomTextStyle.semiBoldFont20Style,),
      ),
      body: CustomSettingsBackGround(
        childBody: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.sp),
          child: SafeArea(
            bottom: false,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
              
                  SizedBox(height: 30.sp,),
              
                  Container(
                    height: 120.sp,
                    width: 120.sp,
                    padding: EdgeInsets.all(5.sp),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.transparent,
                      border: Border.all(color: kPrimaryColor)
                    ),
                    child: ClipRRect(
                      child: ImageUtil.dummyImgClass.profilePic,
                    ),
                  ),
              
                  SizedBox(height: 16.sp,),
              
                  Text("Jabari Malik",style: CustomTextStyle.regularFont18Style,),
              
                  SizedBox(height: 24.sp,),
              
                  Divider(color: kSecondaryColor.withOpacity(0.10),height: 0),
              
                 SizedBox(height: 24.sp,),
              
                 Container(
                   decoration: BoxDecoration(
                     color: kLightGrayColor.withOpacity(0.16),
                     borderRadius: BorderRadius.circular(10.sp)
                   ),
                   child: Column(
                     children: List.generate(SettingsClass.settingsList.length, (index) {
                       return Container(
                         padding: EdgeInsets.symmetric(horizontal: 12.sp),
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
              
                             InkWell(
                               onTap: () {

                                 setState(() {
                                 currentIndex = index;
                                 });


                                 switch(currentIndex){
                                   case 0:
                                     MenuRoute.goToBecomeAJobberPage(context);
                                     return ;

                                   case 1:
                                     MenuRoute.goToMenuSellerPage(context);
                                     return ;

                                   case 2:
                                     MenuRoute.goToMenuBusinessPage(context);
                                     return ;
                                 }



                               },
                               child: Padding(
                                 padding: EdgeInsets.symmetric(vertical: 22.sp),
                                 child: Row(
                                   children: [
              
                                     SizedBox(
                                       height: 24.sp,
                                       width: 24.sp,
                                       child: SvgPicture.asset("$iconPath${SettingsClass.settingsList[index].suffixIcon}"),
                                     ),
              
                                     SizedBox(width: 12.sp,),
              
                                     Expanded(child: Text(SettingsClass.settingsList[index].name ?? "",style: CustomTextStyle.regularFont16Style)),
              
                                     SizedBox(
                                         height: 12.sp,
                                         width: 6.sp,
                                         child: ImageUtil.iconImageClass.nextArrowIcon)
                                   ],
                                 ),
                               ),
                             ),
              
                             if(SettingsClass.settingsList.length - 1 != index)
                               Divider(
                                 color: kSecondaryColor.withOpacity(0.10),
                                 height: 0,
                               )
                           ],
                         ),
                       );
                     }),
                   ),
                 ),

                  SizedBox(height: 10.sp,),
              
                  CustomButton(
                    btnColor: kLightGrayColor.withOpacity(0.16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                            height: 24.sp,
                            width: 24.sp,
                            child: ImageUtil.iconImageClass.logoutIcon),

                        SizedBox(width: 12.sp,),

                        Text("Logout",style: CustomTextStyle.regularFont16Style,)
                      ],
                    )
                  ),

                  SizedBox(height: 10.sp,),

                  CustomButton(
                      btnColor: kLightGrayColor.withOpacity(0.16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                              height: 24.sp,
                              width: 24.sp,
                              child: SvgPicture.asset("assets/images/icons/delete_all.svg",width: 24.sp,height: 24.sp,)
                          ),

                          SizedBox(width: 12.sp,),

                          Text("Delete Account",style: CustomTextStyle.regularFont16Style.copyWith(color: const Color(0xffF44545)),)
                        ],
                      )
                  ),

                  SizedBox(height: 100.sp,)
              
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
