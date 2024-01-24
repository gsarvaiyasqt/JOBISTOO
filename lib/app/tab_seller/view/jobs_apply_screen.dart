import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:jobisto/app/tab_seller/route/tab_seller_route.dart';
import 'package:jobisto/base/base.dart';
import 'package:jobisto/base/common_components/custom/custom_appbar_prefix_icon.dart';
import 'package:jobisto/base/common_components/custom/custom_background.dart';
import 'package:jobisto/utils/common_utils/custom_date_picker.dart';
import 'package:jobisto/utils/utils.dart';

class JobsApplyScreen extends StatefulWidget {
  const JobsApplyScreen({super.key});

  @override
  State<JobsApplyScreen> createState() => _JobsApplyScreenState();
}

class _JobsApplyScreenState extends State<JobsApplyScreen> {
  String monthValue = "1 month";
  DateTime? dueDate;

  TextEditingController amountController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leadingWidth: 76.sp,
        centerTitle: true,
        leading: CustomAppbarPrefixIcon(),
        title: Text("I Can Do The JOB",style: CustomTextStyle.semiBoldFont20Style,),
      ),
      body: CustomBackGround(
        childBody: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.sp),
            child: SingleChildScrollView(
              child: Column(
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

                  Container(
                    decoration: BoxDecoration(
                      color: kLightGrayColor.withOpacity(0.16),
                      borderRadius: BorderRadius.circular(10.sp)
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 14.sp,vertical: 12.sp),
                    child: Column(
                      children: [

                        Row(
                          children: [
                            Expanded(child: Text("Home Paint",style: CustomTextStyle.regularFont18Style,)),

                            SizedBox(
                              height: 24.sp,
                              width: 24.sp,
                              child: ImageUtil.iconImageClass.cancelIcon,
                            )
                          ],
                        ),

                        SizedBox(height: 8.sp,),

                        Row(
                          children: [
                            Text("\$50",style: CustomTextStyle.yellowSemiBoldFont14Style,),

                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 12.sp),
                              width: 1.sp,
                              height: 14.sp,
                              color: kSecondaryColor.withOpacity(0.25),
                            ),
                            
                            Text("1 Nov ‘23",style: CustomTextStyle.regularFont12Style.copyWith(color: kSecondaryColor.withOpacity(0.80)),)
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

List<String> monthList = [
  "1 month","2 month","3 month","4 month","5 month",
];