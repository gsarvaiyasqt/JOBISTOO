import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobisto/app/tab/route/tab_route.dart';
import 'package:jobisto/app/tab/view_model/dashboard_provider.dart';
import 'package:jobisto/app/tab_orders/common_component/common_profile_component.dart';
import 'package:jobisto/app/tab_orders/common_component/portfolios_widget.dart';
import 'package:jobisto/app/tab_orders/common_component/service_type_data_widget.dart';
import 'package:jobisto/app/tab_orders/common_component/skills_component_widget.dart';
import 'package:jobisto/app/tab_seller/components/custom_gridview_job_details.dart';
import 'package:jobisto/base/common_components/custom/custom_appbar.dart';
import 'package:jobisto/base/common_components/custom/custom_tabbar.dart';
import 'package:jobisto/utils/common_utils/enums.dart';
import 'package:provider/provider.dart';

import '../../../base/common_components/custom/acc_and_rej_custom_botton.dart';
import '../../../base/common_components/custom/custom_message_button.dart';
import '../../../utils/utils.dart';
import '../../tab_seller/domain/dummy_models/job_details_model.dart';
import '../domain/dummy_models/portfolios_model.dart';
import '../domain/dummy_models/services_list_model.dart';
import '../domain/dummy_models/skilles_model.dart';
import '../route/order_route.dart';
class MyJobberProfilePage extends StatefulWidget {
  const MyJobberProfilePage({Key? key}) : super(key: key);

  @override
  State<MyJobberProfilePage> createState() => _MyJobberProfilePageState();
}

class _MyJobberProfilePageState extends State<MyJobberProfilePage> {

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final jobsServiceData = ModalRoute.of(context)?.settings.arguments as JobsServiceData?;

    final tabProvider = context.read<TabIndexProvider>();

    return SafeArea(
      child: Scaffold(
        backgroundColor: kBlackColor,
        bottomNavigationBar: jobsServiceData?.jobstype == JOBSTYPE.BUSINESS ?  Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.sp,vertical: 10.sp),
          child: CustomAcceptAndRejectButton(
            onAcceptTap: () {
              TabRoute.goToTabPage(context);
              tabProvider.tabChangeIndex(index: 2);
            },
            onRejectTap: () {
              TabRoute.goToTabPage(context);
              tabProvider.tabChangeIndex(index: 2);
            },
            rejectIcon: ImageUtil.iconImageClass.rejectedIcon,
            rejectText: "Reject",
            rejectLoading: false,
            acceptIcon: ImageUtil.iconImageClass.acceptedIcon,
            acceptLoading: false,
            acceptText: "Accept",
          ),
        ) : SizedBox.shrink(),
        floatingActionButton: jobsServiceData?.jobstype == JOBSTYPE.BUSINESS ? FloatingActionButton(
          elevation: 0,
          onPressed: () {},
          backgroundColor: Colors.transparent,
          child: CustomMessageButton(),) : SizedBox.shrink(),
        appBar: CustomAppBar(
          title: "Jobber Service Profile",
          height: 80.sp,
        ),
        body: Column(
          children: [
            Expanded(
              child: CustomScrollView(
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

                  if(jobsServiceData?.jobstype == JOBSTYPE.BUSINESS)
                  SliverToBoxAdapter(child: SizedBox(height: 23.sp,)),
                  if(jobsServiceData?.jobstype == JOBSTYPE.BUSINESS)
                  SliverPadding(
                    padding: EdgeInsets.symmetric(horizontal: 20.sp),
                    sliver: SliverToBoxAdapter(
                      child: CustomGridForJobDetails()
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

                  if(jobsServiceData?.statustype == null)
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
                  if(jobsServiceData?.statustype != null)
                   SliverPadding(padding: EdgeInsets.symmetric(
                     horizontal: 20.sp),
                     sliver: SliverToBoxAdapter(
                       child: Padding(
                           padding: EdgeInsets.symmetric(vertical: 20.sp),
                           child: Text("Services",style: CustomTextStyle.primaryTextColorFont20W600)),
                     ),
                   ),

                  SliverPadding(
                    padding: EdgeInsets.only(left: 20.sp,right: 20.sp,bottom: kFloatingActionButtonMargin + 48),
                    sliver: SliverList(delegate: SliverChildBuilderDelegate(
                            childCount: ServiceListData.residentialPlumbingData.length,
                            (context, index) {
                              /// Service Component
                              final service =  ServiceListData.residentialPlumbingData[index];
                              return ServiceTypeDataWidget(service: service, index: index);
                            }
                            )),
                  )







                ],
              ),
            ),



          ],
        ),


      ),
    );
  }
}





