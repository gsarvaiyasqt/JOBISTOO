import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobisto/utils/utils.dart';

import '../domain/dummy_models/job_details_model.dart';


class CustomGridForJobDetails extends StatefulWidget {
  const CustomGridForJobDetails({super.key});

  @override
  State<CustomGridForJobDetails> createState() => _CustomGridForJobDetailsState();
}

class _CustomGridForJobDetailsState extends State<CustomGridForJobDetails> {
  @override
  Widget build(BuildContext context) {
    return  GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.sp,
          mainAxisSpacing: 10.sp,
          childAspectRatio: 189.sp/72.sp
      ),
      itemCount: JobDetailsModel.jobDetailsList.length,
      itemBuilder: (context, index) {
        final jobs = JobDetailsModel.jobDetailsList[index];
        return Container(
          decoration: BoxDecoration(
            color: kLightGrayColor.withOpacity(0.16),
            borderRadius: BorderRadius.circular(10.sp),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: index == 3 ? MainAxisAlignment.center :
                MainAxisAlignment.start,
                children: [

                  index != 3 ?
                  SizedBox(width: 10.sp,) :
                  SizedBox.shrink(),

                  SizedBox(
                    height: 20.sp,
                    width: 20.sp,
                    child:
                    SvgPicture.asset("$iconPath${jobs.icon}"),
                  ),

                  SizedBox(width: 8.sp,),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [

                      Text(
                        jobs.firstText ?? "",
                        style: index != 3 ? CustomTextStyle.regularFont16Style : CustomTextStyle.semiBoldFont16Style.copyWith(color: kPrimaryColor,decoration: TextDecoration.underline,decorationColor: kPrimaryColor, ),
                      ),
                      jobs.secondText != null ?
                      Text(jobs.secondText ?? "",style: CustomTextStyle.semiBoldFont20Style.copyWith(color: kPrimaryColor),)
                          :
                      SizedBox.shrink()
                    ],
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
