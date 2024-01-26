import 'package:flutter/material.dart';
import 'package:jobisto/app/tab_seller/view/requests_screen.dart';
import 'package:jobisto/base/common_components/custom/custom_appbar_prefix_icon.dart';
import 'package:jobisto/base/common_components/custom/custom_background.dart';
import 'package:jobisto/base/common_components/custom/custom_tabbar.dart';
import 'package:jobisto/utils/utils.dart';

class ManageJobsScreen extends StatefulWidget {
  const ManageJobsScreen({super.key});

  @override
  State<ManageJobsScreen> createState() => _ManageJobsScreenState();
}

class _ManageJobsScreenState extends State<ManageJobsScreen> with SingleTickerProviderStateMixin {
  int currentIndex = 0;
  TabController? tabController;

  @override
  void initState() {
    tabController = TabController(length: orderTabList.length, vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Manage JOBS",style: CustomTextStyle.semiBoldFont20Style,),
        leadingWidth: 76.sp,
        leading: const CustomAppbarPrefixIcon(),
      ),
      body:  CustomBackGround(
        childBody: SafeArea(
          bottom: false,
          child: Column(
            children: [

              CustomTabBarView(
                color: Colors.transparent,
                tabList: orderTabList,
                onTabChange: (tabBarOnChangeData) {
                  setState(() {
                    currentIndex = tabBarOnChangeData?.currentIndex ?? 0;
                  });
                },
              ),
              Expanded(
                child: IndexedStack(
                  index: currentIndex,
                  children: const [
                    RequestScreen(),
                    RequestScreen(),
                    RequestScreen()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

List<String> orderTabList = ["Requests","Accepted","Rejected"];
