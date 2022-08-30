
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ge/data/constants/color.dart';
import 'package:ge/data/constants/home_page_view.dart';
import 'package:ge/data/constants/home_shortcut_list.dart';
import 'package:ge/presentation/widgets/shortcut_widget.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentSelectedIndex = 0;




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
    const Duration duration = Duration(milliseconds: 300);
    _controller.animateToPage(currentIndex,
        duration: duration, curve: Curves.easeInOut);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        // For Android.
        // Use [light] for white status bar and [dark] for black status bar.
        statusBarIconBrightness: Brightness.dark,
        // For iOS.
        // Use [dark] for white status bar and [light] for black status bar.
        statusBarBrightness: Brightness.light,
        statusBarColor: Colors.transparent,
      ),
      child: Scaffold(
        //backgroundColor: ColorConst.whiteColor,
        body: SafeArea(
          top: true,
          bottom: false,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20.0.h,
              ),
              Padding(
                padding:  EdgeInsets.only(right: 23.0.w, left: 10.0.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: (){

                        },
                      icon: const Icon(Icons.notifications_outlined, color: ColorConst.blackColor,),
                    ),
                    Container(
                      width: 30.0.w,
                      height: 30.0.h,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color:  ColorConst.grayColor300,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15.0.h,
              ),
              Padding(
                padding:  EdgeInsets.only(left: 23.0.w),
                child: Text("Wallet", style: TextStyle(fontSize: 12.0.sp, color: ColorConst.grayColor500, fontWeight: FontWeight.w400),),
              ),
              SizedBox(
                height: 5.0.h,
              ),
              Padding(
                padding:  EdgeInsets.only(left: 23.0.w),
                child: Text("Account Name", style: TextStyle(fontSize: 24.0.sp, color: ColorConst.blackColor, fontWeight: FontWeight.w700),),
              ),
              SizedBox(
                height: 15.0.h,
              ),
              Padding(
                padding:  EdgeInsets.only(left: 23.0.w),
                child: SizedBox(
                  height: 100.0.h,
                  child: ListView.builder(
                    padding: EdgeInsets.symmetric(vertical: 10.0.h),
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: homeShortCutList.length,
                      itemBuilder: (context, index){
                      return ShortCutWidget(
                        clicked: currentSelectedIndex == index,
                        data: homeShortCutList[index],
                        onTap: (){
                        setState((){
                          currentSelectedIndex = index;
                        });
                      },);
                      }),
                )
              ),
              SizedBox(
                height: 15.0.h,
              ),
              Padding(
                padding:  EdgeInsets.only(left: 23.0.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    for(int i = 0; i < homePageViewList.length; i++)
                      Padding(
                        padding:  EdgeInsets.only(right: 15.0.w),
                        child: TextButton(
                            onPressed: (){
                              setState((){
                                onPageChanged(i);
                              });
                            },
                            child:
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(homePageViewList[i].title, style: TextStyle(fontSize: 14.0.sp, color:  i == _currentIndex ? ColorConst.blackColor :  ColorConst.grayColor300, fontWeight: i == _currentIndex ? FontWeight.w500: FontWeight.w400),),
                                SizedBox(
                                  height: 5.0.h,
                                ),
                                Container(
                                  width: 20.0.w,
                                  height: 3.0.h,
                                  decoration: BoxDecoration(
                                    color:  i == _currentIndex ?  ColorConst.primaryColor : Colors.transparent,
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                )
                              ],
                            )

                        ),
                      ),
                  ]
                ),
              ),
              SizedBox(
                height: 10.0.h,
              ),
              Flexible(
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 23.0.w),
                  child: PageView(
                    controller: _controller,
                    onPageChanged: onItemTapped,
                    physics: const NeverScrollableScrollPhysics(),
                    children:  homePageViewList.map<Widget>((e) => e.page).toList()
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
