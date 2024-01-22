import 'dart:async';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jobisto/base/common_components/custom/custom_button.dart';
import 'package:jobisto/utils/utils.dart';

class OtpBottomSheet extends StatefulWidget {
  final String? emailId;
  final bool? isRegister;
  final int? otp;
  const OtpBottomSheet({super.key,this.emailId, this.isRegister, this.otp});

  @override
  State<OtpBottomSheet> createState() => _OtpBottomSheetState();
}

class _OtpBottomSheetState extends State<OtpBottomSheet> {
  TextEditingController otpController = TextEditingController();


  Timer? timer;
  Duration? duration;
  bool isTimer = false;


  String error = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async{

      if(widget.isRegister == false){
        setState(() {
          if(widget.otp != null){
            otpController.text = widget.otp.toString();
          }
        });

        startTimer();

      }else{
        // try {
        //   await authProvider.sendOtpWithoutAuth(mobileNo: widget.emailId ?? "");
        //   final otp = (authProvider.sendOtpWithoutAuthResponse.data?.data?.otp ?? 0).toString();
        //   otpController.text = otp;
        //   startTimer();
        // } catch (e) {
        //   Toaster.showMessage(context, msg: e.toString(),isError: true);
        // }

        setState(() {
          if(widget.otp != null){
            otpController.text = widget.otp.toString();
          }
        });

        startTimer();
      }



    }
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    stopTimer();
    super.dispose();

  }

  startTimer(){
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      final test = const Duration(seconds: 60).inSeconds - timer.tick;
      setState(() {
        if(timer.tick <= 60){
          isTimer = true;
          duration = Duration(seconds: test);
        }else{
          isTimer = false;
          this.timer?.cancel();
        }
      });
    }
    );
    setState(() {

    });
  }
  stopTimer(){
    isTimer = false;
    timer?.cancel();
  }


  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topRight: Radius.circular(50.sp),topLeft: Radius.circular(50.sp)),
            color: kPrimaryColor
        ),
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 30.sp),
              Text("Enter OTP",style: CustomTextStyle.semiBoldFont22Style.copyWith(color: Colors.black)),
              SizedBox(height: 20.sp),
              Text("Please enter four digit code sent \nto your Mobile Number ${widget.emailId ?? "your@gmail.com"}",textAlign: TextAlign.center,style: CustomTextStyle.regularFont16Style.copyWith(color: Colors.black)),
              SizedBox(height: 40.sp),
              Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(4 ?? 0, (index) {
                      var myValue = (otpController.text.isNotEmpty && otpController.text.length >= index + 1)
                          ? otpController.text[index]
                          : "";
                      return Container(
                        height: 54.sp,
                        width: 54.sp,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1.sp,color: Colors.black),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(
                          child: Text(myValue ?? "",style: CustomTextStyle.semiBoldFont16Style.copyWith(
                              fontWeight: FontWeight.w400,
                            color: Colors.black
                          )),
                        ),
                      );
                    }),
                  ),
                  TextFormField(
                    autofillHints: [
                      AutofillHints.oneTimeCode,
                    ],
                    controller: otpController,
                    style: const TextStyle(color: Colors.transparent),
                    cursorColor: kPrimaryColor,

                    inputFormatters: [
                      LengthLimitingTextInputFormatter(4)
                    ],
                    onChanged: (value) {
                      setState(() {
                        if(value.length < 4){
                          error = "Please Enter Valid OTP";
                        }else{
                          error = "";
                        }



                      });
                    },
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      counterText: '',
                      hoverColor: Colors.transparent,
                      enabledBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      focusColor: Colors.transparent,
                      fillColor: Colors.transparent,
                      filled: false,
                      focusedBorder: InputBorder.none,
                      alignLabelWithHint: false,
                      focusedErrorBorder: InputBorder.none,
                      border: InputBorder.none,
                      errorBorder: InputBorder.none,
                    ),
                  )
                ],
              ),

              SizedBox(height: 10.sp),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.sp),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text.rich(

                        TextSpan(
                        text: "Didn’t receive code? ",
                        style:CustomTextStyle.regularFont16Style.copyWith(color: Colors.black),
                        children: [
                          TextSpan(
                              text: "Resend",
                              style:(!isTimer) ?  CustomTextStyle.semiBoldFont16Style.copyWith(color: Colors.black54) : CustomTextStyle.semiBoldFont16Style.copyWith(color: Colors.black),
                              recognizer: TapGestureRecognizer()..onTap = () async {
                                if(isTimer == false){
                                  if(widget.isRegister == false){
                                    try {

                                      startTimer();
                                    } catch (e) {
                                      print(e);
                                    }
                                  }else{
                                    try {

                                      startTimer();
                                    } catch (e) {
                                      // Toaster.showMessage(context, msg: e.toString(),isError: true);
                                    }

                                    // startTimer();
                                  }
                                }else{
                                  print("else part");
                                }
                              }
                            // style: CustomTextStyle.blackRegularFont16Style.copyWith(
                            //  color: otpTimerCheck.isTimer == true? lightGrayColor : kPrimaryColor,decoration: TextDecoration.underline
                            // )
                          )
                        ]
                    )),
                isTimer == false ? Container() : Text(duration == null ? "0.0" : "${(duration?.inMinutes.toString())?.padLeft(2,"0")}:${(duration?.inSeconds.toString())?.padLeft(2,"0")}",style: CustomTextStyle.semiBoldFont22Style.copyWith(fontWeight: FontWeight.w400,color: Colors.black))
                    // ValueListenableBuilder(valueListenable: timerValueNotifier,
                    //   builder: (context, value, child) {
                    //   if(otpTimerCheck.isTimer == false){
                    //     value = Duration.zero;
                    //   }else{
                    //
                    //   }
                    //     // otpTimerValue = "${(value.inMinutes.toString()).padLeft(2,"0")}:${(value.inSeconds.toString()).padLeft(2,"0")}";
                    //     return Text("${(value.inMinutes.toString()).padLeft(2,"0")}:${(value.inSeconds.toString()).padLeft(2,"0")}",style: CustomTextStyle.blackBold16W700.copyWith(
                    //       fontWeight: FontWeight.w400
                    //     ));
                    //   },),
                    // Text("00:45",style: CustomTextStyle.blackRegularFont16Style,)
                  ],
                ),
              ),
              SizedBox(height: 10.sp,),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.sp),
              child: CustomButton(
                btnText: "SUBMIT",
                btnColor: kDarkGreyColor,
              ),
            ),

            SizedBox(height: 20.sp,)
            /* if(widget.otp != null)
                Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.sp),
                        // child: Text("otp : ${otp.toString()}",style: CustomTextStyle.regularFont16Style))),

                      SizedBox(height: 30.sp),

              Flexible(child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.sp),
                      child: Text(error,style: CustomTextStyle.semiBoldFont16Style.copyWith(
                          fontWeight: FontWeight.w500
                      ),)))),
              SizedBox(height: 10.sp),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.sp),
                child: CustomButton(
                  btnColor: kPrimaryColor,
                  btnText: "Verify Otp",
                  // isLoading: authProvider.verifyOtpResponse.state == Status.LOADING,
                  onTap: () async{
                    try{
                      if(widget.isRegister == true){
                        if((otpController.text.length  ?? 0) >= 4){
                          try {
                            // await context.read<AuthProvider>().verifyOtp(username: widget.emailId ?? "", otp: otpController.text);
                            Navigator.pop(context,true);
                          } catch (e) {
                            setState(() {
                              error = e.toString();
                            });
                            // Toaster.showMessage(context, msg: e.toString(),isError: true);
                          }
                        }else{
                          print("else part ::::::::::");
                        }

                      }else{
                        try {
                          // await context.read<AuthProvider>().verifyOtp(username: widget.emailId ?? "", otp: otpController.text);
                          // AuthRoute.goToChangePassword(context,widget.emailId);
                        } catch (e) {
                          setState(() {
                            error = e.toString();
                          });
                          // Toaster.showMessage(context, msg: e.toString(),isError: true);
                        }

                      }

                    }catch(e){
                      // Toaster.showMessage(context, msg: e.toString(),isError: true);
                    }
                  },
                  circleShape: true,
                  // isLoading: verifyOtpLoading,

                  textStyle: CustomTextStyle.semiBoldFont22Style,
                ),
              ),
              SizedBox(height: 60.sp),
                    ],
          ),*/
          ],
          )
        ),
      ),
    );
  }
}
