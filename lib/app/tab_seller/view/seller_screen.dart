import 'package:flutter/material.dart';
import 'package:jobisto/app/tab_seller/components/custom_search_field.dart';
import 'package:jobisto/app/tab_seller/components/managed_jobs_custom_List.dart';
import 'package:jobisto/base/common_components/custom/custom_background.dart';
import 'package:jobisto/utils/utils.dart';

import '../domain/dummy_models/managed_job_models.dart';
import '../route/tab_seller_route.dart';

class SellerScreen extends StatefulWidget {
  const SellerScreen({super.key});

  @override
  State<SellerScreen> createState() => _SellerScreenState();
}

class _SellerScreenState extends State<SellerScreen> {
  TextEditingController searchJobsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Expanded(
                child: Text(
              "Managed JOBS",
              style: CustomTextStyle.semiBoldFont20Style,
              textAlign: TextAlign.center,
            )),
            GestureDetector(
              onTap: () {
                TabSellerRoute.goToManageJobPage(context);
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(color: kLightGrayColor)),
                padding: EdgeInsets.all(8.sp),
                child: SizedBox(
                    height: 24.sp,
                    width: 24.sp,
                    child: ImageUtil.iconImageClass.managedJobsIcon),
              ),
            )
          ],
        ),
      ),
      body: CustomBackGround(
        childBody: SafeArea(
          bottom: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.sp),
            child: Column(
              children: [
                CustomSearchField(
                  textEditingController: searchJobsController,
                  hintText: "Search Jobs",
                  imageIcon: "assets/images/icons/search.svg",
                ),
                Expanded(
                  child: ListView.builder(
                    padding: EdgeInsets.only(top: 12.sp, bottom: 80.sp),
                    itemCount: ManagedJobsClass.managedJobsListCard.length,
                    itemBuilder: (context, index) {
                      final managedJobList = ManagedJobsClass.managedJobsListCard[index];
                      return ManagedJobsCustomList(
                        managedJobsData: managedJobList,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
