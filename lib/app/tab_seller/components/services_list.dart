import 'package:flutter/material.dart';
import 'package:jobisto/utils/utils.dart';

import '../domain/dummy_models/job_request_model.dart';

class ServicesList extends StatefulWidget {
  final ServiceClass? serviceData;
  final List<ServiceClass>? totalLength;
  final int? index;

  const ServicesList({super.key, this.totalLength,this.index, this.serviceData});

  @override
  State<ServicesList> createState() => _ServicesListState();
}

class _ServicesListState extends State<ServicesList> {
  @override
  Widget build(BuildContext context) {

    print("${widget.totalLength?[widget.index ?? 0].img} ==  check this  total length");
    return Container(
      child: Column(
        children: [

          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10.sp),
                child: SizedBox(
                  height: 100.sp,
                  width: 120.sp,
                  child: Image.asset("$dummyImgPath/${widget.serviceData?.img}" ?? "",fit: BoxFit.cover,),
                ),
              ),

              SizedBox(width: 15.sp,),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.serviceData?.serviceName ?? "",style: CustomTextStyle.semiBoldFont16Style,),
                    SizedBox(width: 6.sp,),
                    Text(widget.serviceData?.price != null ? "${widget.serviceData?.price}" : "" ?? "",style: CustomTextStyle.yellowSemiBoldFont14Style),
                    SizedBox(width: 6.sp,),
                    Text(widget.serviceData?.description ?? "",style:  CustomTextStyle.lightFont14Style.copyWith(color: kSecondaryColor.withOpacity(0.80)),)
                  ],
                ),
              ),
            ],
          ),



           (widget.totalLength?.length ?? 0) - 1 != widget.index ? Padding(
            padding: EdgeInsets.symmetric(vertical: 20.sp),
            child: Divider(
              color: kLightGrayColor.withOpacity(0.5),
              height: 0,
            ),
          ) : const SizedBox.shrink()
        ],
      ),
    );
  }
}
