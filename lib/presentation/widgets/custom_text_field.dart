import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ge/data/constants/color.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      decoration: BoxDecoration(
        color: ColorConst.grayColor300.withOpacity(0.3),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.search, color: ColorConst.grayColor500,),
          hintText: "Search",
          hintStyle: TextStyle(fontSize: 16.0.sp, color: ColorConst.grayColor500,),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
