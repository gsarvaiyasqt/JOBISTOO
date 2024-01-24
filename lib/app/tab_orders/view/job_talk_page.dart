import 'package:flutter/material.dart';
import 'package:jobisto/base/common_components/custom/custom_appbar.dart';
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
    return Scaffold(
      backgroundColor: kBlackColor,
      appBar: CustomAppBar(
        height: 100.sp,
        title: "JOBI Talk",
      ),
      body: Column(
        children: [
          Expanded(child: ListView.builder(
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
                          decoration: ContainerDecoration.secondaryDecoration.copyWith(
                            color: logUser ? kLightGrayColor : kPrimaryColor,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10.sp),
                              topRight: Radius.circular(10.sp),
                              bottomLeft: Radius.circular(10.sp),

                            )
                          ),
                          child: Text(dummyMsgData.msg ?? "")),
                      Text(dummyMsgData.day ?? "",style: CustomTextStyle.primaryTextColorFont12W400)
                    ],
                  ));
          },))
        ],
      ),
    );
  }
}
