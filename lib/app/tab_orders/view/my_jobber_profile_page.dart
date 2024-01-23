import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobisto/app/tab_orders/common_component/common_profile_component.dart';
import 'package:jobisto/app/tab_orders/common_component/portfolios_widget.dart';
import 'package:jobisto/app/tab_orders/common_component/service_type_data_widget.dart';
import 'package:jobisto/app/tab_orders/common_component/skills_component_widget.dart';
import 'package:jobisto/base/common_components/custom/custom_appbar.dart';
import 'package:jobisto/base/common_components/custom/custom_tabbar.dart';

import '../../../utils/utils.dart';
import '../domain/dummy_models/portfolios_model.dart';
import '../domain/dummy_models/services_list_model.dart';
import '../domain/dummy_models/skilles_model.dart';
class MyJobberProfilePage extends StatefulWidget {
  const MyJobberProfilePage({Key? key}) : super(key: key);

  @override
  State<MyJobberProfilePage> createState() => _MyJobberProfilePageState();
}

class _MyJobberProfilePageState extends State<MyJobberProfilePage> {

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBlackColor,
        appBar: CustomAppBar(
          title: "Jobber Service Profile",
          height: 80.sp,
        ),
        body: CustomScrollView(
          slivers: [
            /// profile component
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 20.sp),
              sliver: SliverToBoxAdapter(
                child: ProfileCommonComponent(
                  icon: ImageUtil.dummyImgClass.profile11,
                  profileName: "Jabari Osei",
                  rating: "4.2",
                ),
              ),
            ),

            SliverToBoxAdapter(child: SizedBox(height: 30.sp),),
            SliverPadding(
               padding: EdgeInsets.symmetric(horizontal: 20.sp),
               sliver: SliverToBoxAdapter(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Skills",style: CustomTextStyle.primaryTextColorFont20W600),
                    SizedBox(width: 30.sp),
                    Expanded(
                      child: Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        alignment: WrapAlignment.start,
                        spacing: 6.sp,
                        runSpacing: 6.sp,
                        children: List.generate(SkillsModel.skillsList.length, (index) {
                          /// Skills component
                          final skills =  SkillsModel.skillsList[index];
                          return SkillsComponentWidget(skills: skills);
                        }
                        ),
                      ),
                    )
                  ],
                ),
               ),
             ),

            SliverToBoxAdapter(child: SizedBox(height: 30.sp),),
            
            SliverPadding(padding: EdgeInsets.symmetric(horizontal: 20.sp),
            sliver: SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Photos",style: CustomTextStyle.primaryTextColorFont20W600),
                  SizedBox(height: 16.sp),
                  Wrap(
                    spacing: 8.sp,
                    runSpacing: 8.sp,
                    children: List.generate(3, (index) => SizedBox(
                        height: 54.sp,
                        width: 54.sp,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset("$dummyImgPath/home_paint.png",fit: BoxFit.cover),
                        ))),
                  )
                ],
              ),
            ),
            ),

            SliverToBoxAdapter(child: SizedBox(height: 30.sp),),

            SliverPadding(padding: EdgeInsets.symmetric(horizontal: 20.sp),

            sliver: SliverToBoxAdapter(
              child: Row(
                children: [
                  Expanded(child: Text("Portfolios",style: CustomTextStyle.primaryTextColorFont20W600)),
                  Text("See All",style: CustomTextStyle.secondaryTextColorFont14W400,)
                ],
              ),
            ),
            ),

            SliverToBoxAdapter(child: SizedBox(height: 16.sp),),

            SliverPadding(
                padding: EdgeInsets.symmetric(horizontal: 20.sp),
              sliver: SliverToBoxAdapter(
                child: Row(
                  children: List.generate(PortfoliosModel.portfoliosList.length, (index) {
                    /// Portfolios Component
                    final portfolios = PortfoliosModel.portfoliosList[index];
                    return PortfoliosWidget(portfolios: portfolios);
                  }),
                )
              ),


            ),

            SliverAppBar(
              leadingWidth: 0.0,
              pinned: true,
              floating: false,
              leading: const SizedBox.shrink(),
              toolbarHeight: 90.sp,
              flexibleSpace: CustomTabBarView(
                padding: EdgeInsets.symmetric(horizontal: 20.sp),
                tabList: SkillsModel.serviceList,
                onTabChange: (tabBarOnChangeData) {
                  setState(() {

                  });
                },
              ),

            ),

            SliverPadding(
              padding: EdgeInsets.only(left: 20.sp,right: 20.sp,bottom: 50.sp),
              sliver: SliverList(delegate: SliverChildBuilderDelegate(
                      childCount: ServiceListData.serviceListData.length,
                      (context, index) {
                        /// Service Component
                        final service =  ServiceListData.serviceListData[index];
                        return ServiceTypeDataWidget(service: service, index: index);
                      }
                      )),
            )







          ],
        ),


      ),
    );
  }
}




