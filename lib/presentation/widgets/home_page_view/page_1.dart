import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ge/data/constants/color.dart';

import '../custom_text_field.dart';


class Page1 extends StatelessWidget {

  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Row(
             mainAxisAlignment: MainAxisAlignment.start,
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Expanded(child: CustomTextField()),
               SizedBox(
                 width: 10.0.w,
               ),
               IconButton(
                   onPressed: (){},
                   icon: Icon(Icons.compare_arrows, color: ColorConst.grayColor300),
               ),
             ],
           ),
          SizedBox(
            height: 30.0.h,
          ),
          Container(
            width: size.width,
            decoration: BoxDecoration(
              color: ColorConst.whiteColor,
              borderRadius: BorderRadius.circular(5.0),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFF000000).withOpacity(0.08),
                    blurRadius: 1.0,
                    spreadRadius: 0.0,
                    offset: const Offset(2.0, 2.0),
                  ),
                ]
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0.w, vertical: 15.0.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 45.0.w,
                    height: 45.0.h,
                    decoration: const BoxDecoration(
                      color: ColorConst.grayColor300,
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(
                    width: 15.0.w,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Waves ❤️", style: TextStyle(fontSize: 14.0.sp, color: ColorConst.grayColor300, fontWeight: FontWeight.w400,),),
                      Text("5.00045️", style: TextStyle(fontSize: 24.0.sp, color: ColorConst.blackColor, fontWeight: FontWeight.w600,),),
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15.0.h,
          ),
          Container(
            width: size.width,
            decoration: BoxDecoration(
                color: ColorConst.whiteColor,
                borderRadius: BorderRadius.circular(5.0),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFF000000).withOpacity(0.08),
                    blurRadius: 1.0,
                    spreadRadius: 0.0,
                    offset: const Offset(2.0, 2.0),
                  ),
                ]
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0.w, vertical: 15.0.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 45.0.w,
                    height: 45.0.h,
                    decoration: const BoxDecoration(
                      color: ColorConst.grayColor300,
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(
                    width: 15.0.w,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Pigeon / My Token️", style: TextStyle(fontSize: 14.0.sp, color: ColorConst.grayColor300, fontWeight: FontWeight.w400,),),
                      Text("5.00045️", style: TextStyle(fontSize: 24.0.sp, color: ColorConst.blackColor, fontWeight: FontWeight.w600,),),
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15.0.h,
          ),
          Container(
            width: size.width,
            decoration: BoxDecoration(
                color: ColorConst.whiteColor,
                borderRadius: BorderRadius.circular(5.0),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFF000000).withOpacity(0.08),
                    blurRadius: 1.0,
                    spreadRadius: 0.0,
                    offset: const Offset(2.0, 2.0),
                  ),
                ]
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0.w, vertical: 15.0.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 45.0.w,
                    height: 45.0.h,
                    decoration: const BoxDecoration(
                      color: ColorConst.grayColor300,
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(
                    width: 15.0.w,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Us Dollar", style: TextStyle(fontSize: 14.0.sp, color: ColorConst.grayColor300, fontWeight: FontWeight.w400,),),
                      Text("199.24️", style: TextStyle(fontSize: 24.0.sp, color: ColorConst.blackColor, fontWeight: FontWeight.w600,),),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
