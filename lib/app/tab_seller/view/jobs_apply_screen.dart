import 'package:flutter/material.dart';
import 'package:jobisto/app/tab/route/tab_route.dart';
import 'package:jobisto/app/tab/view_model/dashboard_provider.dart';
import 'package:jobisto/app/tab_seller/components/custom_jobs_apply_details.dart';
import 'package:jobisto/app/tab_seller/components/selected_portfolio_list.dart';
import 'package:jobisto/app/tab_seller/domain/dummy_models/portfolio_model.dart';
import 'package:jobisto/base/common_components/custom/custom_appbar_prefix_icon.dart';
import 'package:jobisto/base/common_components/custom/custom_background.dart';
import 'package:jobisto/base/common_components/custom/custom_button.dart';
import 'package:jobisto/utils/utils.dart';
import 'package:provider/provider.dart';

class JobsApplyScreen extends StatefulWidget {
  const JobsApplyScreen({super.key});

  @override
  State<JobsApplyScreen> createState() => _JobsApplyScreenState();
}

class _JobsApplyScreenState extends State<JobsApplyScreen> {
  @override
  Widget build(BuildContext context) {
    final tabProvider = context.read<TabIndexProvider>();
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leadingWidth: 76.sp,
        centerTitle: true,
        leading: const CustomAppbarPrefixIcon(),
        title: Text(
          "I Can Do The JOB",
          style: CustomTextStyle.semiBoldFont20Style,
        ),
      ),
      body: CustomBackGround(
        childBody: Column(
          children: [
            Expanded(
              child: SafeArea(
                bottom: false,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.sp),
                  child: Column(
                    children: [
                      Expanded(
                        child: ListView.builder(
                          itemCount: portfolioList.length + 1,
                          itemBuilder: (context, index) {
                            if (index == 0) {
                              return const CustomJobsApplyDetails();
                            } else {
                              final listData = portfolioList[index - 1];

                              return SelectedPortFolioList(
                                selectedPortfolioData: listData,
                              );
                            }
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(left: 20.sp, right: 20.sp, bottom: 30.sp),
              child: CustomButton(
                onTap: () {
                  TabRoute.goToTabPage(context);
                  tabProvider.tabChangeIndex(index: 1);
                },
                btnText: "Send",
                textStyle: CustomTextStyle.semiBoldFont16Style
                    .copyWith(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<String> monthList = [
  "1 month",
  "2 month",
  "3 month",
  "4 month",
  "5 month",
];

