import 'package:flutter/material.dart';
import 'package:jobisto/base/common_components/custom/custom_background.dart';
import 'package:jobisto/base/common_components/custom/custom_button.dart';
import 'package:jobisto/utils/utils.dart';

import '../../menu/components/become_job_card.dart';
import '../../menu/components/common_appbar.dart';
import '../route/tab_settings_route.dart';

class BecomeAJobberScreen extends StatefulWidget {
  const BecomeAJobberScreen({super.key});

  @override
  State<BecomeAJobberScreen> createState() => _BecomeAJobberScreenState();
}

class _BecomeAJobberScreenState extends State<BecomeAJobberScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: CustomBackGround(
        childBody: Stack(
          alignment: Alignment.bottomCenter,
          children:[
            Padding(
              padding:EdgeInsets.only(left: 20.sp,right: 20.sp,bottom: MediaQuery.of(context).padding.bottom + 50.sp),
              child: Column(
                children: [

                  CommonAppBar(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    centerText: "Become a Jobber",
                  ),

                  Expanded(
                    child: ListView.builder(
                      padding: EdgeInsets.only(top: 12.sp,bottom: 20.sp),
                      itemCount: jobberBecomeList.length,
                      itemBuilder: (context, index) {
                        return BecomeJobCard(
                          onTap: (){
                            currentIndex = index;
                            setState(() {
                            });
                          },
                          headerText: "${jobberBecomeList[index].headerText}",
                          descText: jobberBecomeList[index].dec,
                          radioBtnColor: currentIndex == index ? kPrimaryColor : Colors.transparent,
                          radioBorderColor: currentIndex == index ? kPrimaryColor : kSecondaryColor.withOpacity(0.50),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 54.sp,
                  padding:  EdgeInsets.symmetric(horizontal: 20.sp),
                  child: CustomButton(
                    btnText: "Next",
                    textStyle: CustomTextStyle.blackSemiBoldFont16Style,
                    onTap: (){
                      currentIndex == 0 ?
                      TabSettingsRoute.goToJobberServicePage(context) :
                      TabSettingsRoute.goToJobberBusinessPage(context);
                    },
                  ),
                ),

                SizedBox(height: 20.sp,)
              ],
            )
          ]
        ),
      ),
    );
  }
}


class JobberBecomeModel {
  final String? headerText;
  final String? dec;

  JobberBecomeModel({this.headerText, this.dec});
}


List<JobberBecomeModel> jobberBecomeList = [
  JobberBecomeModel(headerText: "Jobber Service",dec: "Nec sed eget eget diam scelerisque. Sed ornare adipiscing elit aliquam feugiat amet ornare vestibulum. Lorem ipsum dolor sit amet consectetur."),
  JobberBecomeModel(headerText: "Jobber Business",dec: "Nec sed eget eget diam scelerisque. Sed ornare adipiscing elit aliquam feugiat amet ornare vestibulum. Lorem ipsum dolor sit amet consectetur."),
];