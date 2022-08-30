import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ge/presentation/screens/bottom_bar.dart';


class InitRoute extends StatelessWidget {
  const InitRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 854),
        builder: (context, child){
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: "Ge",
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: const BottomBar(),
          );
        });
  }
}
