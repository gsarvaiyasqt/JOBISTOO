part of utils;

mixin  ContainerDecoration on BoxDecoration{

  static BoxDecoration get secondaryDecoration => BoxDecoration(
    borderRadius: BorderRadius.circular(60.sp),
    color: kLightGrayColor.withOpacity(0.16),
  );


}

