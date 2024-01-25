part of utils;



const int primaryColorValue = 0xffFEBE73;

const Color kPrimaryColor = Color(0xffFEBE73);
const Color kSecondaryColor = Color(0xffFFFFFF);
const Color kTextSecondaryColor = Color(0xffFEBE73);
const Color kTextPrimaryColor = Color(0xffFFFFFF);
const Color kTextDarkColor = Color(0xff19212F);
const Color kLowWhiteColor = Color(0xffA4A4A4);
const Color kLightGrayColor = Color(0xff6F778B);
const Color kDarkGreyColor = Color(0xff191C26);
const Color kBlackColor = Color(0xff000000);
const Color kRedColor = Color(0xffF44545);
const Color kLightGreenColor = Color(0xff73FE79);
const Color kButtonColor = Color(0xff6F778B);
const Color kTabColor = Color(0xffA4A4A4);
const Color kYellowColor = Color(0xffF9A600);

final primarySwatchColor = MaterialColor(primaryColorValue, <int, Color>{
  50: const Color(primaryColorValue).withOpacity(0.05),//10%
  100: const Color(primaryColorValue).withOpacity(0.10),//20%
  200: const Color(primaryColorValue).withOpacity(0.20),//30%
  300: const Color(primaryColorValue).withOpacity(0.30),//40%
  400: const Color(primaryColorValue).withOpacity(0.40),//50%
  500: const Color(primaryColorValue).withOpacity(0.50),//60%
  600: const Color(primaryColorValue).withOpacity(0.60),//70%
  700: const Color(primaryColorValue).withOpacity(0.70),//80%
  800: const Color(primaryColorValue).withOpacity(0.80),//90%
  900: const Color(primaryColorValue).withOpacity(0.90),//100%
});

double kFont_18 = 18.sp;
double kFont_16 = 16.sp;
double kFont_14 = 14.sp;
double kFont_12 = 12.sp;
double kFont_13 = 13.sp;
double kFont_25 = 25.sp;
double kFont_20 = 20.sp;
double kFont_35 = 35.sp;
double kFont_24 = 24.sp;
double kFont_10 = 10.sp;


/// character limit
const addressLimit = 100;
const mobileNumberLimit = 13;
const minLimit = 50;
const minCodeLimit = 10;
const notesLimit = 200;
const otpLimit = 6;
