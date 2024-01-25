import 'package:flutter/material.dart';
import 'package:jobisto/app/menu/route/menu_route.dart';
import 'package:jobisto/utils/utils.dart';
import '../../components/common_appbar.dart';
import 'package:jobisto/app/menu/components/common_done_jobs_card.dart';
import '../../../../base/common_components/custom/custom_background.dart';
import '../../domin/dummy_model.dart';

class MyDoneJObs extends StatefulWidget {
  const MyDoneJObs({super.key});

  @override
  State<MyDoneJObs> createState() => _MyDoneJObsState();
}

class _MyDoneJObsState extends State<MyDoneJObs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomBackGround(
          childBody:Padding(
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
                  centerText: "My Done JOBs",
                  child: Padding(
                    padding:  EdgeInsets.all(8.0),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(50.sp),
                      onTap: (){
                        MenuRoute.goToAddDoneJobsPage(context);
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

                Expanded(
                  child: ListView.builder(
                    itemCount: portfolioList.length,
                    itemBuilder: (context, index) {
                    final listData = portfolioList[index];
                    return InkWell(
                      onTap: (){
                        MenuRoute.goToJobDoneDetailsPage(context);
                      },
                      child: CommonDoneJobsCard(
                        listData: listData,
                      ),
                    );
                  },),
                )
              ],
            ),
          )

      )
    );
  }
}
