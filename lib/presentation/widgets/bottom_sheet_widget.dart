import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ge/data/constants/color.dart';


class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 20.0.h,
          ),
          Container(
            width: 50.0.w,
            height: 3.0.h,
            decoration: BoxDecoration(
              color: ColorConst.blueColor10,
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
          SizedBox(
            height: 35.0.h,
          ),
          Icon(Icons.handshake, size: 50.0.sp, color: ColorConst.blueColor10,),
          SizedBox(
            height: 35.0.h,
          ),
          Text("Hello!", style: TextStyle(fontSize: 35.0.sp, color: ColorConst.whiteColor, fontWeight: FontWeight.w500,),),
          SizedBox(
            height: 10.0.h,
          ),
          Text("hsvfucjenldsbmiotjhddrbth!", style: TextStyle(fontSize: 16.0.sp, color: ColorConst.blueColor10, fontWeight: FontWeight.w400,),),
          SizedBox(
            height: 25.0.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.blue[900],
                  
                ),
                child: Material(
                  type: MaterialType.transparency,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(10.0),
                    onTap: (){},
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.0.h, horizontal: 15.0.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(Icons.copy, color: ColorConst.whiteColor,),
                          Text("Copy", style: TextStyle(color: ColorConst.whiteColor, fontSize: 12.0.sp,),)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 25.0.w,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.blue[900],

                ),
                child: Material(
                  type: MaterialType.transparency,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(10.0),
                    onTap: (){

                    },
                    child: Padding(
                      padding:  EdgeInsets.symmetric(vertical: 10.0.h, horizontal: 15.0.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(Icons.ios_share_rounded, color: ColorConst.whiteColor,),
                          Text("Share", style: TextStyle(color: ColorConst.whiteColor, fontSize: 12.0.sp,),)
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 35.0.h,
          ),
          Container(
            width: 250.0.h,
            height: 250.0.h,
            decoration: BoxDecoration(
              color: ColorConst.whiteColor,
              borderRadius: BorderRadius.circular(7.0),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFF000000).withOpacity(0.08),
                    blurRadius: 5.0,
                    spreadRadius: 0.0,
                    offset: const Offset(5.0, 2.0),
                  ),
                ]
            ),
          ),
          SizedBox(
            height: 20.0.h,
          ),
          Text("Your QR Code", style: TextStyle(color: ColorConst.whiteColor, fontSize: 12.0.sp),),
          SizedBox(
            height: 70.0.h,
          ),

        ],
      ),
    );
  }
}
