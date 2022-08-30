import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ge/data/constants/color.dart';


class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
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
              padding: EdgeInsets.symmetric(horizontal: 15.0.w, vertical: 20.0.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Available Balance", style: TextStyle(fontSize: 12.0.sp, color: ColorConst.grayColor300, fontWeight: FontWeight.w400,),),
                  SizedBox(
                    height: 10.0.h,
                  ),
                  Text("105.004", style: TextStyle(fontSize: 24.0.sp, color: ColorConst.blackColor, fontWeight: FontWeight.w500,),),
                  SizedBox(
                    height: 10.0.h,
                  ),
                  Container(
                    width: size.width,
                    height: 10.0.h,
                    decoration: BoxDecoration(
                      color: ColorConst.blueColor10,
                      borderRadius: BorderRadius.circular(20.0)
                    ),
                    child: Stack(
                      children: [
                        Container(
                          width: size.width * 0.7,
                          height: 10.0.h,
                          decoration: BoxDecoration(
                              color: ColorConst.primaryColor,
                              borderRadius: BorderRadius.circular(20.0)
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30.0.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("105.00400345", style: TextStyle(fontSize: 14.0.sp, color: ColorConst.blackColor, fontWeight: FontWeight.w500,),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Leased", style: TextStyle(fontSize: 12.0.sp, color: ColorConst.grayColor300, fontWeight: FontWeight.w500,),),
                          SizedBox(
                            width: 10.0.w,
                          ),
                          Container(
                            width: 12.0.w,
                            height: 12.0.h,
                            decoration: const  BoxDecoration(
                              color: ColorConst.primaryColor,
                              shape: BoxShape.circle,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10.0.h,
                  ),
                  Divider(
                    height: 1.5.h,
                    color: ColorConst.grayColor300,
                  ),
                  SizedBox(
                    height: 20.0.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("105.00400345", style: TextStyle(fontSize: 14.0.sp, color: ColorConst.blackColor, fontWeight: FontWeight.w500,),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Total", style: TextStyle(fontSize: 12.0.sp, color: ColorConst.grayColor300, fontWeight: FontWeight.w500,),),
                          SizedBox(
                            width: 10.0.w,
                          ),
                          Container(
                            width: 12.0.w,
                            height: 12.0.h,
                            decoration: const  BoxDecoration(
                              color: ColorConst.blueColor10,
                              shape: BoxShape.circle,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10.0.h,
                  ),
                  Divider(
                    height: 1.5.h,
                    color: ColorConst.grayColor300,
                  ),
                  SizedBox(
                    height: 30.0.h,
                  ),
                  Container(
                    width: size.width,
                    decoration: BoxDecoration(
                      color: ColorConst.blueColor10,
                      borderRadius: BorderRadius.circular(5.0),

                    ),
                    child: Material(
                      type: MaterialType.transparency,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(5.0),
                        onTap: (){},
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Center(
                            child: Text("Start Lease", style: TextStyle(fontSize: 12.0.sp, color: ColorConst.primaryColor, fontWeight: FontWeight.w500,),),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
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
              padding:  EdgeInsets.symmetric(horizontal: 15.0.w, vertical: 20.0.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("View History", style: TextStyle(fontSize: 16.0.sp, color: ColorConst.blackColor, fontWeight: FontWeight.w500,),),
                  const Icon(Icons.arrow_forward_ios, color: ColorConst.grayColor300,)
                ],
              ),
            ),
          ),
          SizedBox(
            height: 50.0.h,
          ),
        ],
      ),
    );
  }
}