import 'package:flutter/material.dart';
import 'package:jobisto/base/common_components/custom/custom_appbar.dart';
import 'package:jobisto/base/common_components/custom/custom_background.dart';
import 'package:jobisto/utils/utils.dart';

import '../domain/dummy_models/dummy_message_model.dart';
class JOBTalkPage extends StatefulWidget {
  const JOBTalkPage({Key? key}) : super(key: key);

  @override
  State<JOBTalkPage> createState() => _JOBTalkPageState();
}

class _JOBTalkPageState extends State<JOBTalkPage> {
  @override
  Widget build(BuildContext context) {

    final isKeyBoardOpen = MediaQuery.of(context).viewInsets.bottom != 0;
    return Scaffold(
      // backgroundColor: kBlackColor,
      extendBodyBehindAppBar: true,
      appBar: CustomAppBar(
        height: 70.sp,
        title: "JOBI Talk",
      ),
      body: CustomBackGround(
        childBody: SafeArea(
          child: Column(
            children: [
              Expanded(child: ListView.builder(
                padding: EdgeInsets.only(bottom: 50.sp,left: 20.sp,right: 20.sp),
                itemCount: DummyMessageModel.dummyMsgList.length,
                itemBuilder: (context, index) {
                  final dummyMsgData = DummyMessageModel.dummyMsgList[index];
                  final logUser = dummyMsgData.id != 1;
                  return Align(
                      alignment: logUser ? Alignment.centerLeft : Alignment.centerRight,
                      child: Column(
                        crossAxisAlignment: logUser ? CrossAxisAlignment.start :   CrossAxisAlignment.end,
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: logUser ? 125.sp : 0,left: logUser ? 0 : 125.sp),
                              padding: EdgeInsets.all(10.sp),
                              decoration: ContainerDecoration.secondaryDecoration.copyWith(
                                color: logUser ? kLightGrayColor.withOpacity(0.16) : kPrimaryColor,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10.sp),
                                  topRight: Radius.circular(10.sp),
                                  bottomLeft: !logUser ? Radius.circular(10.sp) : Radius.zero,
                                  bottomRight: logUser ? Radius.circular(10.sp) : Radius.zero

                                )
                              ),
                              child: Text(dummyMsgData.msg ?? "",style: CustomTextStyle.primaryTextColorFont16W300.copyWith(
                                color: logUser ? Colors.white : kBlackColor,
                              ),)),
                          SizedBox(height: 10.sp),
                          Text(dummyMsgData.day ?? "",style: CustomTextStyle.primaryTextColorFont12W400)
                        ],
                      ));
              },)),
              Padding(
                padding: EdgeInsets.only(bottom: !isKeyBoardOpen ? 30.sp : 0,right: 20.sp,left: 20.sp),
                child: TextFormField(
                  style: CustomTextStyle.primaryTextColorFont16W400,
                  minLines: 1,
                  maxLines: 3,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 20.sp,top: 10.sp,bottom: 10.sp),
                    hintText: "Type a message...",
                    suffixIcon: Padding(
                      padding: const EdgeInsets.all(5),
                      child: Container(
                        decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.circular(120.sp),
                        ),
                        child: Icon(Icons.send,color: kBlackColor,size: 24.sp),
                      ),
                    ),
                    hintStyle: CustomTextStyle.primaryTextColorFont16W400,
                    filled: true,
                    fillColor: kLightGrayColor.withOpacity(0.16),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(120.sp)),
                      borderSide: BorderSide(
                        width: 1,
                        color: kLightGrayColor.withOpacity(0.50),
                      )
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(120.sp)),
                        borderSide: BorderSide(
                          width: 1,
                          color: kPrimaryColor.withOpacity(0.50),
                        )
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
