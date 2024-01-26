import 'package:flutter/material.dart';
import 'package:jobisto/app/tab_orders/view/requests_tab_screen.dart';
import 'package:jobisto/base/common_components/custom/custom_background.dart';
import 'package:jobisto/utils/utils.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> with SingleTickerProviderStateMixin {
  int currentIndex = 0;
  TabController? tabController;

  @override
  void initState() {
    tabController = TabController(length: orderTabList.length, vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Text("My Jobs",style: CustomTextStyle.semiBoldFont20Style),
        ),
        body: CustomBackGround(
          childBody: SafeArea(
            bottom: false,
            child: Column(
              children: [
            
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(orderTabList.length, (index) {
                    return InkWell(
                      splashColor: kPrimaryColor.withOpacity(0.1),
                      onTap: (){
                        setState(() {
                          currentIndex = index;
                          tabController?.animateTo(currentIndex,duration: const Duration(milliseconds: 400),curve: Curves.easeIn);
                        });
                      },
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 20.sp),
                            width: MediaQuery.sizeOf(context).width / 3,
                            alignment: Alignment.center,
                            child: Text(orderTabList[index],
                                style: currentIndex == index
                                    ? CustomTextStyle.semiBoldFont16Style.copyWith(color: kPrimaryColor)
                                    : CustomTextStyle.semiBoldFont16Style
                            ),
                          ),
                          Container(
                            width:MediaQuery.sizeOf(context).width / 3,
                            height: 1.5.sp,
                            color: kLightGrayColor,
                            child:
                            currentIndex == index
                                ? Container(
                              height: 1.sp,
                              width: MediaQuery.sizeOf(context).width / 3,
                              color: kPrimaryColor,
                            )
                                : const SizedBox.shrink(),
                          ),
                        ],
                      ),
                    );
                  }),
                ),
            
                Expanded(
                  child: TabBarView(
                      controller: tabController,
                      physics: const NeverScrollableScrollPhysics(),
                      children: const [

                        RequestTab(),
                        RequestTab(),
                        RequestTab(),

                      ]
                  ),
                )
            
            
              ],
            ),
          ),
        ),
      ),
    );
  }
}

List orderTabList = ["Requests","Accepted","Rejected"];


