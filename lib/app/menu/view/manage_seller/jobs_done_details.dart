import 'package:flutter/material.dart';
import 'package:jobisto/utils/utils.dart';
import 'package:jobisto/app/menu/components/common_appbar.dart';
import '../../../tab_orders/domain/dummy_models/skilles_model.dart';
import '../../../../base/common_components/custom/custom_background.dart';
import '../../../tab_orders/common_component/skills_component_widget.dart';

class JobDoneDetails extends StatefulWidget {
  JobDoneDetails({Key? key}) : super(key: key);

  @override
  _JobDoneDetailsState createState() {
    return _JobDoneDetailsState();
  }
}

class _JobDoneDetailsState extends State<JobDoneDetails> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: CustomBackGround(
        childBody: SafeArea(
          child: Column(
            children: [
              Stack(
                children: [
                  ImageUtil.dummyImgClass.homePaintImage,
                  CommonAppBar(
                    colorLeft: Color(0xff393C48),
                    centerText: "",
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Padding(
                      padding:  EdgeInsets.all(8.0),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(50.sp),
                        onTap: (){
                          // MenuRoute.goToAddDoneJobsPage(context);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: kLightGrayColor
                            ),
                            borderRadius: BorderRadius.circular(50.sp),
                            color: Color(0xff393C48),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 16.sp,vertical: 8.sp),
                          child: Center(
                            child: SizedBox(
                              height: 24.sp,
                              width: 24.sp,
                              child: CustomSvgPictures.asset("$iconPath/edit.svg", fit: BoxFit.cover,color: kSecondaryColor),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),

              SizedBox(height: 20.sp),

              Expanded(
                child: ListView(
                  padding:  EdgeInsets.symmetric(horizontal: 20.sp),
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                
                    Row(
                      children: [
                        Expanded(child: Text("Home Paint"?? "",style: CustomTextStyle.regularFont18Style,)),
                      ],
                    ),
                
                    SizedBox(height: 8.sp,),
                
                    Row(
                      children: [
                        Row(
                          children: [
                            Text("\$50.00",style: CustomTextStyle.yellowSemiBoldFont14Style,),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 12.sp),
                              width: 1.sp,
                              height: 14.sp,
                              color: kSecondaryColor.withOpacity(0.25),
                            ),
                          ],
                        ),
                
                        Expanded(
                          child: Row(
                            children: [
                              ImageUtil.iconImageClass.timeClockIcon,
                
                              SizedBox(width: 5.sp),
                
                              Text("2 days" ?? "",style: CustomTextStyle.regularFont12Style.copyWith(color: kSecondaryColor.withOpacity(0.80)),),
                            ],
                          ),
                        )
                      ],
                    ),
                
                    SizedBox(height: 15.sp,),
                
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Skills",style: CustomTextStyle.primaryTextColorFont20W600),
                        SizedBox(width: 30.sp),
                        Expanded(
                          child: Wrap(
                            crossAxisAlignment: WrapCrossAlignment.center,
                            alignment: WrapAlignment.start,
                            spacing: 6.sp,
                            runSpacing: 6.sp,
                            children: List.generate(SkillsModel.skillsList.length, (index) {
                              /// Skills component
                              final skills =  SkillsModel.skillsList[index];
                              return SkillsComponentWidget(skills: skills);
                            }
                            ),
                          ),
                        )
                      ],
                    ),
                
                    SizedBox(height: 15.sp),
                
                    Text("Description",style: CustomTextStyle.semiBoldFont20Style,),
                
                    SizedBox(height: 10.sp,),
                
                    Text("At JOBISTO, we specialize in delivering exceptional plumbing system installations tailored to meet the unique needs of homeowners. Our comprehensive services cover every aspect, from meticulous design and planning to the installation of water supply lines, drainage systems, gas lines, and fixtures. Our certified technicians ensure the safe and precise installation of gas lines for various appliances, and we handle fixture installations with precision to minimize the risk of leaks.",
                      style: CustomTextStyle.regularFont18Style.copyWith(color: kSecondaryColor.withOpacity(0.80)),
                    ),
                
                
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}