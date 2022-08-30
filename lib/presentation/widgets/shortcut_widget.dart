import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ge/data/constants/color.dart';
import 'package:ge/data/model/home_shortcut.dart';


class ShortCutWidget extends StatelessWidget {
  const ShortCutWidget({Key? key, required this.clicked, required this.data, required this.onTap}) : super(key: key);

  final bool clicked;
  final HomeShortCutModel data;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0.w,
      margin: EdgeInsets.only(right: 10.0.w),
      decoration: BoxDecoration(
        color: clicked == true ? ColorConst.primaryColor : ColorConst.whiteColor,
        borderRadius: BorderRadius.circular(7.0),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF000000).withOpacity(0.08),
            blurRadius: 1.0,
            spreadRadius: 0.0,
            offset: const Offset(2.0, 2.0),
          ),
        ]
      ),
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          borderRadius: BorderRadius.circular(7.0),
          onTap: onTap,
          child: Padding(
            padding:  EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(data.icon, color: clicked == true ? ColorConst.whiteColor : ColorConst.blackColor,),
                Text(data.text, style: TextStyle(fontSize: 12.0.sp, color: clicked == true ? ColorConst.whiteColor : ColorConst.blackColor),)
              ],
            ),
          ),
        ),
      )
    );
  }
}
