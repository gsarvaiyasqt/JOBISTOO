
import 'package:flutter/material.dart';
import 'package:jobisto/utils/utils.dart';
class CustomTabBarView extends StatefulWidget {
  final Color? color;
  final List<String>? tabList;
  final EdgeInsetsGeometry? padding;
  // Lambda
  final Function(TabBarOnChangeData? tabBarOnChangeData)? onTabChange;
  const CustomTabBarView({super.key, this.tabList, this.onTabChange, this.padding, this.color});

  @override
  State<CustomTabBarView> createState() => _CustomTabBarViewState();
}

class _CustomTabBarViewState extends State<CustomTabBarView> with SingleTickerProviderStateMixin {

 late TabController tabController;

  int currentIndex = 0;
  @override
  void initState() {
    if(widget.tabList != null){
      tabController = TabController(length: widget.tabList?.length ?? 0, vsync: this);
    }
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.color ?? kBlackColor,
      child: Padding(
        padding: widget.padding ??  EdgeInsets.zero,
        child: Row(
          children: List.generate(widget.tabList?.length ?? 0, (index) {
            final  tabData = widget.tabList?[index];
            final  selectedIndex = currentIndex == index;
            return Expanded(child: GestureDetector(
              onTap: () {
                setState(() {
                  currentIndex = index;
                  widget.onTabChange!(TabBarOnChangeData(
                    currentIndex: index
                  ));
                });
              },
              child: Column(
              children: [
                SizedBox(height: 20.sp),
                Center(child: Text(tabData ?? "",style: selectedIndex
                    ? CustomTextStyle.semiBoldFont16Style.copyWith(color: kPrimaryColor)
                    : CustomTextStyle.semiBoldFont16Style)),
                    SizedBox(height: 20.sp),
                Container(height: 1.sp,color: selectedIndex ? kPrimaryColor : kSecondaryColor,),
                SizedBox(height: 20.sp),
              ],
                    ),
            ));
          }),
        ),
      ),
    );



  }
}
class TabBarOnChangeData{
  int? currentIndex;
  TabController? tabController;

  TabBarOnChangeData({this.tabController,this.currentIndex});
}