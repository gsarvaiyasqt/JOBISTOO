import 'package:flutter/material.dart';
import 'package:jobisto/app/tab_home/components/custom_job_confirmed_background.dart';
import 'package:jobisto/base/common_components/custom/custom_button.dart';
import 'package:jobisto/utils/utils.dart';

class JobConfirmScreen extends StatefulWidget {
  const JobConfirmScreen({super.key});

  @override
  State<JobConfirmScreen> createState() => _JobConfirmScreenState();
}

class _JobConfirmScreenState extends State<JobConfirmScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomJobConfirmedBackGround(
        childBody: Column(
          children: [

            Expanded(
              child: Column(
              
                children: [
              
                  SizedBox(height: 210.sp,width: double.infinity,),
              
                  SizedBox(
                    height: 220.sp,
                    width: 190.sp,
                    child: ImageUtil.iconImageClass.confirmedJobIcon,
                  ),
              
                  SizedBox(height: 50.sp,),
              
              
                  Text("Job Confirmed",style: CustomTextStyle.semiBoldFont20Style.copyWith(fontSize: 34.sp),),

                  Text("Give it your very best",style: CustomTextStyle.regularFont16Style,)
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.sp),
              child: CustomButton(
                onTap: () {
                  Navigator.pop(context);
                },
                btnText: "Done",
                textStyle: CustomTextStyle.semiBoldFont16Style.copyWith(color: kBlackColor),
              ),
            ),

            SizedBox(height: 30.sp,)
          ],
        ),
      ),
    );
  }
}
