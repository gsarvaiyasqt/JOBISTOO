import 'package:flutter/material.dart';
import 'package:jobisto/app/tab_seller/components/portfolio_list_component.dart';
import 'package:jobisto/app/tab_seller/domain/dummy_models/portfolio_model.dart';
import 'package:jobisto/base/common_components/custom/custom_appbar_prefix_icon.dart';
import 'package:jobisto/base/common_components/custom/custom_background.dart';
import 'package:jobisto/base/common_components/custom/custom_button.dart';
import 'package:jobisto/utils/utils.dart';

class PortfolioScreen extends StatefulWidget {
  const PortfolioScreen({super.key});

  @override
  State<PortfolioScreen> createState() => _PortfolioScreenState();
}

class _PortfolioScreenState extends State<PortfolioScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        leadingWidth: 76.sp,
        leading: const CustomAppbarPrefixIcon(),
        title: Text(
          "Portfolio",
          style: CustomTextStyle.semiBoldFont20Style,
        ),
      ),
      body: CustomBackGround(
        childBody: Column(
          children: [

            Expanded(
              child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.sp),
                    child: Column(
                      children: [

                        SizedBox(height: 10.sp,),

                        ListView.builder(
                          shrinkWrap: true,
                          itemCount: portfolioList.length,
                          itemBuilder: (context, index) {
                            final listData = portfolioList[index];
                            return PortFolioListComponent(
                              portfolioData: listData,
                            );
                          },
                        )
                      ],
                    ),
                  ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.sp,vertical: 20.sp),
              child: SizedBox(
                  height: 54,
                  child: CustomButton(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    btnText: "Save",
                    textStyle: CustomTextStyle.semiBoldFont16Style.copyWith(color: Colors.black),
                  )),
            )
          ],
        ),



      ),
    );
  }
}
