import 'package:flutter/material.dart';
import 'package:jobisto/base/common_components/custom/custom_appbar.dart';
import 'package:jobisto/utils/utils.dart';

class RequirementScreen extends StatefulWidget {
  const RequirementScreen({super.key});

  @override
  State<RequirementScreen> createState() => _RequirementScreenState();
}

class _RequirementScreenState extends State<RequirementScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        height: 80.sp,
        title: "My Requirements",
      ),
    );
  }
}
