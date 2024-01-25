
part of utils;



const String logoPath = "assets/images/logo";
const String iconPath = "assets/images/icons";
const String graphicsPath = "assets/images/graphics";
const String dummyImgPath = "assets/images/dummy_img";

class ImageUtil{
  static LogoImage logo = LogoImage();
  static IconImageClass iconImageClass = IconImageClass();
  static GraphicsClass graphicsClass = GraphicsClass();
  static DummyImgClass dummyImgClass = DummyImgClass();
}


class LogoImage {
  Widget get appLogo => const CustomSvgPictures.asset("$logoPath/logo.svg",fit: BoxFit.cover,);
  Widget get subLogo => CustomSvgPictures.asset("$logoPath/sub_logo.svg",height: 504.sp,width: 358.sp,alignment: Alignment.center,fit: BoxFit.contain,);
}

class IconImageClass{
  Widget get pendingClock => const CustomSvgPictures.asset("$iconPath/pending_clock.svg",fit: BoxFit.cover,);
  Widget get managedJobsIcon => const CustomSvgPictures.asset("$iconPath/manage_jobs.svg",fit: BoxFit.cover,);
  Widget get acceptedIcon => const CustomSvgPictures.asset("$iconPath/accepted.svg", fit: BoxFit.cover);
  Widget get addIcon => const CustomSvgPictures.asset("$iconPath/add.svg", fit: BoxFit.cover);
  Widget get threeDotIcon => const CustomSvgPictures.asset("$iconPath/three_dot.svg", fit: BoxFit.cover);
  Widget get swipeIcon => const CustomSvgPictures.asset("$iconPath/swipe.svg", fit: BoxFit.cover);
  Widget get backArrowIcon => CustomSvgPictures.asset("$iconPath/back_arrow.svg", fit: BoxFit.cover,height: 24.sp,width: 24.sp,);
  Widget get edit => CustomSvgPictures.asset("$iconPath/edit.svg", fit: BoxFit.cover,height: 24.sp,width: 24.sp,);
  Widget get calendarIcon => const CustomSvgPictures.asset("$iconPath/calender.svg", fit: BoxFit.cover);
  Widget get cancelIcon => const CustomSvgPictures.asset("$iconPath/cancel.svg", fit: BoxFit.cover);
  Widget get closeEyeIcon => const CustomSvgPictures.asset("$iconPath/close_eye.svg", fit: BoxFit.cover);
  Widget get completedIcon => const CustomSvgPictures.asset("$iconPath/completed.svg", fit: BoxFit.cover);
  Widget get confirmedJobIcon => const CustomSvgPictures.asset("$iconPath/confirmed_job.svg", fit: BoxFit.cover);
  Widget get createIcon => const CustomSvgPictures.asset("$iconPath/create.svg", fit: BoxFit.cover);
  Widget get crossArrowIcon => const CustomSvgPictures.asset("$iconPath/cross_arrow.svg", fit: BoxFit.cover,color: kPrimaryColor,);
  Widget get crossArrowIconMain => const CustomSvgPictures.asset("$iconPath/cross_arrow.svg", fit: BoxFit.cover,color: kSecondaryColor,);
  Widget get linkIcon => const CustomSvgPictures.asset("$iconPath/link.svg", fit: BoxFit.cover);
  Widget get locationIcon => const CustomSvgPictures.asset("$iconPath/location.svg", fit: BoxFit.cover);
  Widget get messageChatIcon => const CustomSvgPictures.asset("$iconPath/message_chat.svg", fit: BoxFit.cover);
  Widget get plumbingProfileIcon => const CustomSvgPictures.asset("$iconPath/plumbing_profile.svg", fit: BoxFit.contain);
  Widget get processIcon => const CustomSvgPictures.asset("$iconPath/Process.svg", fit: BoxFit.cover);
  Widget get rejectedIcon => const CustomSvgPictures.asset("$iconPath/rejected.svg", fit: BoxFit.cover);
  Widget get reviewStarIcon => const CustomSvgPictures.asset("$iconPath/review_star.svg", fit: BoxFit.cover);
  Widget get starIcon => const CustomSvgPictures.asset("$iconPath/star.svg", fit: BoxFit.cover);
  Widget get termsAndConditionIcon => const CustomSvgPictures.asset("$iconPath/terms_and_condition.svg", fit: BoxFit.cover);
  Widget get timeClockIcon => const CustomSvgPictures.asset("$iconPath/time_clock.svg", fit: BoxFit.cover);
  Widget get toiletProfileIcon => const CustomSvgPictures.asset("$iconPath/toilet_profile.svg", fit: BoxFit.cover);
  Widget get userProfileIcon => const CustomSvgPictures.asset("$iconPath/user_profile.svg", fit: BoxFit.cover);
  Widget get tailorProfileIcon => const CustomSvgPictures.asset("$iconPath/tailer_profile_icon.svg", fit: BoxFit.cover);
  Widget get acServiceIcon => const CustomSvgPictures.asset("$iconPath/ac_service.svg", fit: BoxFit.cover);
  Widget get cleaningIcon => const CustomSvgPictures.asset("$iconPath/cleaning.svg", fit: BoxFit.cover);
  Widget get plumbingIcon  => const CustomSvgPictures.asset("$iconPath/plumbing.svg", fit: BoxFit.cover);
  Widget get saloonIcon => const CustomSvgPictures.asset("$iconPath/saloon.svg", fit: BoxFit.cover);
  Widget get homeIcon => const CustomSvgPictures.asset("$iconPath/home.svg", fit: BoxFit.cover);
  Widget get orderIcon => const CustomSvgPictures.asset("$iconPath/orders.svg", fit: BoxFit.cover);
  Widget get sellerIcon => const CustomSvgPictures.asset("$iconPath/seller.svg", fit: BoxFit.cover);
  Widget get settingsIcon => const CustomSvgPictures.asset("$iconPath/settings.svg", fit: BoxFit.cover);
  Widget get appleIcon => const CustomSvgPictures.asset("$iconPath/apple.svg", fit: BoxFit.cover);
  Widget get facebookIcon => const CustomSvgPictures.asset("$iconPath/facebook.svg", fit: BoxFit.cover);
  Widget get googleIcon => const CustomSvgPictures.asset("$iconPath/google.svg", fit: BoxFit.cover);
  Widget get openEyeIcon => const CustomSvgPictures.asset("$iconPath/open_eye.svg", fit: BoxFit.cover,color: Colors.white,);
  Widget get searchIcon => const CustomSvgPictures.asset("$iconPath/search.svg",fit: BoxFit.cover,);
  Widget get cameraIcon =>  CustomSvgPictures.asset("$iconPath/camera.svg", fit: BoxFit.cover,width: 30.sp,height: 30.sp);
  Widget get galleryIcon => const CustomSvgPictures.asset("$iconPath/gallery.svg", fit: BoxFit.cover);
  Widget get nextArrowIcon => const CustomSvgPictures.asset("$iconPath/next_arrow.svg",fit: BoxFit.cover,);
  Widget get logoutIcon => const CustomSvgPictures.asset("$iconPath/logoutt.svg",fit: BoxFit.cover,color: Color(0xffffffff),);
  Widget get deleteAccountIcon =>  CustomSvgPictures.asset("$iconPath/deleteAccountIcon.svg",fit: BoxFit.cover,);
  Widget get delete => CustomSvgPictures.asset("$iconPath/delete_all.svg",fit: BoxFit.cover,);
  Widget get upArrow => const CustomSvgPictures.asset("$iconPath/up_arrow.svg",fit: BoxFit.cover,);
  Widget get downArrow => const CustomSvgPictures.asset("$iconPath/down_arrow.svg",fit: BoxFit.cover,);
  Widget get serviceIcon => const CustomSvgPictures.asset("$iconPath/service.svg",fit: BoxFit.cover,);
  Widget get profileIcon => const CustomSvgPictures.asset("$iconPath/profile.svg",fit: BoxFit.cover,);
  Widget get portfolioIcon => const CustomSvgPictures.asset("$iconPath/portfolio.svg",fit: BoxFit.cover,);

}

class GraphicsClass{
  Widget get jobConfirmBg => const CustomSvgPictures.asset("$graphicsPath/job_confirm_bg.png", fit: BoxFit.cover);
  Widget get backGroundImage  => const AssetsImagePictures(assetName: "$graphicsPath/bg_img.png",fit: BoxFit.cover,height: double.infinity,width: double.infinity,);
  Widget get settingsBg => const AssetsImagePictures(assetName: "$graphicsPath/Settings_bg.png",fit: BoxFit.cover,);

}

class DummyImgClass{
  Widget get homePaintImage  => const AssetsImagePictures(assetName: "$dummyImgPath/home_paint.png",fit: BoxFit.contain,);
  Widget get slideImage  => const AssetsImagePictures(assetName: "$dummyImgPath/slide.png",fit: BoxFit.contain,);
  Widget get profilePic => const AssetsImagePictures(assetName: "$dummyImgPath/profile_pic.png",fit: BoxFit.cover,);
  Widget get profile11 => const AssetsImagePictures(assetName: "$dummyImgPath/profile_1.png",fit: BoxFit.cover,);
  Widget get profile22 => const AssetsImagePictures(assetName: "$dummyImgPath/profile_2.png",fit: BoxFit.cover,);
  Widget get fiveStars => const AssetsImagePictures(assetName: "$dummyImgPath/five_stars.png",fit: BoxFit.cover,);

}


class CustomSvgPictures extends StatelessWidget {
  const CustomSvgPictures.asset(
      this.assetName, {
        Key? key,
        this.width,
        this.height,
        this.fit = BoxFit.cover,
        this.alignment = Alignment.center,
        this.color
      }) : super(key: key);

  final double? width;
  final Color? color;
  final String assetName;
  final double? height;
  final BoxFit fit;
  final AlignmentGeometry alignment;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      assetName,
      height: height,
      width: width,
      fit: fit,
      alignment: alignment,
      // colorFilter: ColorFilter.mode(color ==  ? null : color , BlendMode.srcIn),
      color: color,
      placeholderBuilder: (context) {
        return const SizedBox.shrink();
      },
    );
  }
}

class AssetsImagePictures extends StatelessWidget {
  final double? width;
  final Color? color;
  final String assetName;
  final double? height;
  final BoxFit? fit;
  final AlignmentGeometry? alignment;
  const AssetsImagePictures({Key? key, required this.assetName, this.width, this.color, this.height, this.fit, this.alignment}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(assetName,
      fit: fit,
      color: color,
      width: width,
      height: height,
      alignment: alignment ?? Alignment.center,
    );
  }
}
