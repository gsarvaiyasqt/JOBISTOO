import 'package:flutter/material.dart';
import 'package:jobisto/app/menu/route/menu_route.dart';
import 'package:jobisto/utils/utils.dart';

import '../../../../base/common_components/custom/custom_background.dart';
import '../../../tab_orders/domain/dummy_models/services_list_model.dart';
import '../../components/common_appbar.dart';
import '../../components/common_service_widget.dart';

class MyProductScreen extends StatefulWidget {
  const MyProductScreen({super.key});

  @override
  State<MyProductScreen> createState() => _MyProductScreenState();
}

class _MyProductScreenState extends State<MyProductScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: CustomBackGround(
          childBody: Stack(
            children: [
              Padding(padding:EdgeInsets.only(
                  left: 15.sp,right: 15.sp,
              ),
                child: Column(
                  children: [
                    CommonAppBar(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      centerText: "Products",
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

                    SizedBox(height: 15.sp),

                    Expanded(
                      child: ListView.builder(
                        padding: EdgeInsets.zero,
                        itemCount: ServiceListData.serviceListData.length,
                        itemBuilder: (context, index) {
                          final service =  ServiceListData.serviceListData[index];
                          return CommonServiceWidget(service: service, index: index);
                        },),
                    )
                  ],
                ),
              )
            ],
          )
      ),
    );
  }
}
