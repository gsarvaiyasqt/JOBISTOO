import 'package:flutter/material.dart';
import 'package:jobisto/app/menu/route/menu_route.dart';
import 'package:jobisto/utils/utils.dart';

import '../../../../base/common_components/custom/custom_background.dart';
import '../../components/common_appbar.dart';

class MyJobistoTeam extends StatefulWidget {
  const MyJobistoTeam({super.key});

  @override
  State<MyJobistoTeam> createState() => _MyJobistoTeamState();
}

class _MyJobistoTeamState extends State<MyJobistoTeam> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomBackGround(
          childBody: Padding(padding:EdgeInsets.only(
              left: 15.sp,right: 15.sp,
              bottom: MediaQuery.of(context).padding.bottom + 50.sp
          ),
            child: Column(
              children: [
                CommonAppBar(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  centerText: "My JOBISTO Team",
                  child: Padding(
                    padding:  EdgeInsets.all(8.0),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(50.sp),
                      onTap: (){
                        MenuRoute.goToAddProductScreenPage(context);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: kLightGrayColor
                          ),
                          borderRadius: BorderRadius.circular(50.sp),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 16.sp,vertical: 8.sp),
                        child: Center(
                          child: SizedBox(
                            height: 24.sp,
                            width: 24.sp,
                            child: CustomSvgPictures.asset("$iconPath/add.svg", fit: BoxFit.cover,color: kPrimaryColor),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                Expanded(
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.symmetric(vertical: 5.sp),
                        padding: EdgeInsets.symmetric(horizontal: 14.sp,vertical: 12.sp),
                        decoration: BoxDecoration(
                          color: kLightGrayColor.withOpacity(0.16),
                          borderRadius: BorderRadius.circular(10.sp),
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 50.sp,
                              height: 50.sp,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Image.asset("$dummyImgPath/profile_1.png"),
                            ),

                            SizedBox(width: 10.sp),

                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Kwame Osei",style: CustomTextStyle.regularFont16Style),
                                  Row(
                                    children: [
                                      Expanded(child: Text("kwaose21@gmail.com",style: CustomTextStyle.regularFont12Style)),
                                      ImageUtil.iconImageClass.crossArrowIcon
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    },),
                )
              ],
            ),
          )
      ),
    );
  }
}
