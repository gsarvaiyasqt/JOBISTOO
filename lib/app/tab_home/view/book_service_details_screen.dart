import 'package:flutter/material.dart';
import 'package:jobisto/app/tab_home/route/home_route.dart';
import 'package:jobisto/app/tab_orders/common_component/custom_job_app_bar.dart';
import 'package:jobisto/base/common_components/custom/custom_background.dart';
import 'package:jobisto/base/common_components/custom/custom_button.dart';
import 'package:jobisto/utils/utils.dart';

class BookServiceDetailsScreen extends StatefulWidget {
  const BookServiceDetailsScreen({super.key});

  @override
  State<BookServiceDetailsScreen> createState() => _BookServiceDetailsScreenState();
}

class _BookServiceDetailsScreenState extends State<BookServiceDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: CustomJabAppbar(
          height: 226.sp,
          image: ImageUtil.iconImageClass.tailorProfileIcon,
        ),
        body: CustomBackGround(
          childBody: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.sp),
              child: Column(
                children: [
                  
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                    
                        SizedBox(height: 16.sp,),
                    
                        Text("Super Tailor",style: CustomTextStyle.semiBoldFont22Style,),
                    
                        SizedBox(height: 8.sp,),
                    
                        Row(
                          children: [
                            SizedBox(
                              height: 20.sp,
                              width: 20.sp,
                              child: ImageUtil.iconImageClass.profileIcon,
                            ),
                    
                            SizedBox(width: 5.sp,),
                            
                            Text("10 Jobber",style: CustomTextStyle.regularFont14Style,)
                          ],
                        ),
                    
                        SizedBox(height: 30.sp,),
                        
                        Text("MY JOB IS TO",style: CustomTextStyle.semiBoldFont20Style,),
                    
                        SizedBox(height: 15.sp,),
                    
                        Text("Make you look beautiful in your clothes because they are well made, fit nicely and make you stand out in a crowded place. Everybody who sees you in clothes that I make will respect you and your taste",
                        style: CustomTextStyle.lightTextFieldStyle,
                        )
                      ],
                    ),
                  ),
                  
                  CustomButton(
                    onTap: () {
                      TabHomeRoute.goToBookServicePage(context);
                    },
                    btnText: "Book Service",
                    textStyle: CustomTextStyle.semiBoldFont16Style.copyWith(color: kBlackColor),
                  ),
      
                  SizedBox(height: 30.sp,)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
