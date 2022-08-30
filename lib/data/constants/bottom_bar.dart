

import 'package:flutter/material.dart';
import 'package:ge/presentation/screens/home.dart';
import 'package:ge/presentation/screens/screen_2.dart';
import 'package:ge/presentation/screens/screen_3.dart';
import 'package:ge/presentation/screens/screen_4.dart';

import '../model/bottom_bar.dart';

List<BottomBarModel> bottomBarList = [
  BottomBarModel(icon: Icons.wallet, screen: const Home()),
  BottomBarModel(icon: Icons.sync, screen: Screen2()),
  BottomBarModel(icon: Icons.add, screen: const Home()),
  BottomBarModel(icon: Icons.format_list_bulleted, screen: Screen3()),
  BottomBarModel(icon: Icons.settings, screen: Screen4()),
];

List<Widget> bottomBarScreens = [
  Home(),
  Screen2(),
  Home(),
  Screen3(),
  Screen4(),
];