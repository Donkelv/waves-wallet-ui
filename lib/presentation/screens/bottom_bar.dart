import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ge/data/constants/bottom_bar.dart';
import 'package:ge/data/constants/color.dart';
import 'package:ge/presentation/widgets/bottom_sheet_widget.dart';

import '../widgets/botom_bar_widgets.dart';



class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {


  /// Page controller
  final PageController _controller = PageController();

  // tracks current page
  int _currentIndex = 0;

  ///Set index of current page
  void onItemTapped(index) {
    setState(() {
      _currentIndex = index;
    });
  }


  ///animate to next page
  void onPageChanged(currentIndex) {
    const Duration _duration = Duration(milliseconds: 300);
    _controller.animateToPage(currentIndex,
        duration: _duration, curve: Curves.easeInOut);
    if(currentIndex == 2){
      showModalBottomSheet(
        isScrollControlled: true,
          context: context,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
              )
          ),
          backgroundColor: ColorConst.primaryColor,
          builder: (context){
        return  const BottomSheetWidget();
      });
    }
  }

  ///scaffold key
  final scaffoldKey = GlobalKey<ScaffoldState>();


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      key: scaffoldKey,
      backgroundColor: ColorConst.whiteColor,
      body: PageView(
        controller: _controller,
        onPageChanged: onItemTapped,
        physics: const NeverScrollableScrollPhysics(),
        children:  bottomBarScreens.toList(),
      ),

      bottomNavigationBar: Container(
        width: size.width,
        decoration: BoxDecoration(
            color: ColorConst.whiteColor,
            boxShadow: [
              BoxShadow(
                color: const Color(0xFF000000).withOpacity(0.08),
                blurRadius: 30.0,
                spreadRadius: 0.0,
                offset: const Offset(0.0, -20.0),
              ),
            ]
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0.w, vertical: 25.0.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              for (int i = 0; i < bottomBarList.length; i++)

                BottomListWidgetIconWidget(
                  onTap: (){

                      setState(() {
                        onPageChanged(i);
                      });

                  },
                  i: i,
                  currentIndex: _currentIndex,
                ),

            ],
          ),
        ),
      ),
    );
  }
}
