import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ge/data/constants/color.dart';

import '../../data/constants/bottom_bar.dart';


class BottomListWidgetIconWidget extends StatelessWidget {
  final VoidCallback onTap;
  final int i;
  final int currentIndex;
  const BottomListWidgetIconWidget(
      {Key? key, required this.onTap, required this.i, required this.currentIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Material(
      type: MaterialType.transparency,
      child: InkWell(
        borderRadius: BorderRadius.circular(35.0.h),
        onTap: onTap,
        child:
        i == 2 ?
            Container(
              width: 35.0.w,
              height: 35.0.h,
              decoration: BoxDecoration(
                color: ColorConst.blueColor10,
                borderRadius: BorderRadius.circular(5.0),

              ),
              child: Center(
                child: Icon(
                  bottomBarList[i].icon,
                  color: ColorConst.primaryColor,
                ),
              ),
            )
            :

        Container(
          width: 40.0.w,
          height: 40.0.h,
          decoration:  BoxDecoration(
            shape: BoxShape.circle,
            color: i == 2 ? ColorConst.blueColor10 :  Colors.transparent,
          ),
          child: Center(
            child: Icon(
              bottomBarList[i].icon,
              color: i == currentIndex ?
                  ColorConst.blackColor : ColorConst.grayColor300,
            ),
          ),
        ),
      ),
    );
  }
}