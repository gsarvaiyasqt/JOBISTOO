import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

import '../../../base/base.dart';
import '../../../utils/common_utils/custom_date_picker.dart';
import '../../../utils/utils.dart';
import '../route/tab_seller_route.dart';
import '../view/jobs_apply_screen.dart';

class CustomJobsApplyDetails extends StatefulWidget {
  const CustomJobsApplyDetails({super.key});

  @override
  State<CustomJobsApplyDetails> createState() => _CustomJobsApplyDetailsState();
}

class _CustomJobsApplyDetailsState extends State<CustomJobsApplyDetails> {
  String monthValue = "1 month";
  DateTime? dueDate;

  TextEditingController amountController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text("How Long Will JOB Take Me?",style: CustomTextStyle.regularFont14Style,),
            Text("*",style: CustomTextStyle.regularFont14Style.copyWith(color: Colors.red),),
          ],
        ),

        SizedBox(height: 10.sp),

        DropdownButtonFormField(
          dropdownColor: kDarkGreyColor,
          decoration:  InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12.sp)),

            focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12.sp),
                borderSide: BorderSide(color: kLightGrayColor)
            ),
          ),

          value: monthValue,

          items:  monthList.map((e) {
            return DropdownMenuItem(
                alignment: AlignmentDirectional.centerStart,
                value: e,
                child: Text(e ?? "",style: CustomTextStyle.lightFont18Style.copyWith(fontSize: 16.sp),
                  textAlign: TextAlign.start,)
            );
          }).toList(),
          onChanged: (newValue) async{
            print("$newValue === check this dropdown value");
            try {
              setState(() {
                monthValue = newValue ?? "Africa";
              });

            } catch (e) {
              print(e);
            }
          },
        ),

        SizedBox(height: 20.sp,),

        Row(
          children: [

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Due Date",style: CustomTextStyle.regularFont14Style,),

                  SizedBox(height: 8.sp,),

                  CustomDatePickerWidget(
                      radius: 10.sp,
                      onSelectedDateTime: (p0) {
                        setState(() {
                          dueDate = p0;
                        });
                      },
                      shoDatePicker: false,
                      name: dueDate != null
                          ?  DateFormat("MM/dd/yyyy").format(dueDate ?? DateTime.now())
                          : "Start Date"),

                ],
              ),
            ),

            SizedBox(width: 10.sp,),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Amount",style: CustomTextStyle.regularFont14Style,),

                  SizedBox(height: 8.sp,),

                  CustomTextField(
                    controller: amountController,
                    hint: "50",
                    inputType: TextInputType.number,
                    suffix: Text("\$ ",style: CustomTextStyle.lightTextFieldStyle),
                  )

                ],
              ),
            )
          ],
        ),

        SizedBox(height: 20.sp,),

        Row(
          children: [
            Text("Why I am Best for the JOB",style: CustomTextStyle.regularFont14Style,),
            Text("*",style: CustomTextStyle.regularFont14Style.copyWith(color: Colors.red),),
          ],
        ),

        SizedBox(height: 8.sp,),

        CustomDescriptionTextField(
            minLine: 5,
            maxLine: 5,
            controller: descriptionController,
            isSecure: false,
            hint: "Torem ipsum dolor sit amet consec..."
        ),

        SizedBox(height: 30.sp,),

        Row(
          children: [

            Expanded(child: Text("Select Portfolio",style: CustomTextStyle.semiBoldFont20Style,)),

            InkWell(
              onTap: () {
                TabSellerRoute.goToPortfolioPage(context);
              },
              child: SizedBox(
                  height: 30.sp,
                  width: 30.sp, child: SvgPicture.asset("$iconPath/add.svg",colorFilter:  ColorFilter.mode(kPrimaryColor, BlendMode.srcIn),)
                // CustomSvgPictures.asset("$iconPath/add.svg", fit: BoxFit.cover, color:  ),
              ),
            )
          ],
        ),

        SizedBox(height: 15.sp,),
      ],
    );
  }
}
