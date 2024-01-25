import 'package:flutter/material.dart';
import 'package:jobisto/app/menu/components/manage_border_card.dart';
import 'package:jobisto/app/menu/components/manage_fill_card.dart';
import 'package:jobisto/app/menu/route/menu_route.dart';
import 'package:jobisto/utils/utils.dart';

import '../../../../base/common_components/custom/custom_background.dart';
import '../../components/common_appbar.dart';

class MenuBusinessScreen extends StatefulWidget {
  const MenuBusinessScreen({super.key});

  @override
  State<MenuBusinessScreen> createState() => _MenuBusinessScreenState();
}

class _MenuBusinessScreenState extends State<MenuBusinessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomBackGround(
          childBody: Padding(
            padding:EdgeInsets.only(left: 20.sp,right: 20.sp,bottom: MediaQuery.of(context).padding.bottom + 50.sp),
            child: Column(
              children: [

                CommonAppBar(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  centerText: "Business",
                ),

                Padding(
                  padding:  EdgeInsets.only(top: 20.sp),
                  child: Column(
                    children: [
                      Row(
                        children: [

                          Expanded(
                            child: ManageBorderCard(
                              onTap: (){
                                MenuRoute.goToMyJobistoProfilePage(context);
                              },
                              icon: Image.asset("$dummyImgPath/profile_1.png"),
                              name: "Business Name",
                              desc: "Highlight your expertise and products on your Seller Profile pag",
                            ),
                          ),

                          SizedBox(width: 10.sp),

                          Expanded(
                            child: Column(
                              children: [
                                ManageFillCard(
                                  onTap: (){
                                    MenuRoute.goToMyBusinessServicePage(context);
                                  },
                                  icon: ImageUtil.iconImageClass.serviceIcon,
                                  value: "5",
                                ),

                                SizedBox(height: 10.sp),

                                ManageFillCard(
                                  onTap: (){
                                    MenuRoute.goToMyProductScreenPage(context);
                                  },
                                  icon: ImageUtil.iconImageClass.productIcon,
                                  value: "2",
                                  cardName: "Products",
                                ),

                              ],
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 10.sp),
                      
                      Row(
                        children: [

                          Expanded(
                            child: ManageFillCard(
                              onTap: (){},
                              icon: ImageUtil.iconImageClass.portfolioIcon,
                              value: "7",
                              cardName: "Portfolio",
                            ),
                          ),

                          SizedBox(width: 10.sp),

                          Expanded(
                            child: ManageFillCard(
                              onTap: (){
                                MenuRoute.goToMyJobistoTeamPage(context);
                              },
                              icon: ImageUtil.iconImageClass.resourceIcon,
                              value: "3",
                              cardName: "Resources",

                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}
