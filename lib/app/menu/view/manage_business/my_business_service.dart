import '../../domin/dummy_model.dart';
import 'package:flutter/material.dart';
import 'package:jobisto/utils/utils.dart';
import '../../components/common_appbar.dart';
import '../../components/common_service_widget.dart';
import '../../../../base/common_components/custom/custom_background.dart';
import '../../../tab_orders/domain/dummy_models/services_list_model.dart';

class MyBusinessService extends StatefulWidget {
  const MyBusinessService({super.key});

  @override
  State<MyBusinessService> createState() => _MyBusinessServiceState();
}

class _MyBusinessServiceState extends State<MyBusinessService> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomBackGround(
          childBody: Padding(
              padding:EdgeInsets.only(
                left: 15.sp,right: 15.sp,
                // bottom: MediaQuery.of(context).padding.bottom + 50.sp
              ),
              child: Column(
                  children: [
                    CommonAppBar(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      centerText: "My Service",
                      child: Padding(
                        padding:  EdgeInsets.all(8.0),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(50.sp),
                          onTap: (){},
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

                    SizedBox(height: 20.sp),


                    Row(
                      children: List.generate(filterList.length, (index) {
                        return InkWell(
                          onTap: (){
                            currentIndex = index;
                            setState(() {

                            });
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 12.sp,vertical: 6.sp),
                            margin: EdgeInsets.symmetric(horizontal: 2.5.sp),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(60.sp),
                              color: currentIndex == index ? kPrimaryColor : kLightGrayColor.withOpacity(0.16),
                            ),
                            child: Text(filterList[index], style: CustomTextStyle.regularFont16Style.copyWith(color: currentIndex == index ? kTextDarkColor : kSecondaryColor)),
                          ),
                        );
                      }),
                    ),

                    SizedBox(height: 20.sp),

                    Expanded(
                      child: ListView.builder(
                        padding: EdgeInsets.zero,
                        itemCount: ServiceListData.serviceListData.length,
                        itemBuilder: (context, index) {
                          final service =  ServiceListData.serviceListData[index];
                          return CommonServiceWidget(service: service, index: index);
                        },),
                    )
                  ]
              )
          )
      ),
    );
  }
}
