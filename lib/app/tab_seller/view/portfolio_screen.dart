import 'package:flutter/material.dart';
import 'package:jobisto/base/common_components/custom/custom_appbar.dart';
import 'package:jobisto/base/common_components/custom/custom_appbar_prefix_icon.dart';
import 'package:jobisto/base/common_components/custom/custom_background.dart';
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
        title: Text("Portfolio",style: CustomTextStyle.semiBoldFont20Style,),
      ),
      body: CustomBackGround(),
    );
  }
}
