import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ge/domain/route/init_route.dart';

void main() {
  WidgetsFlutterBinding?.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      <DeviceOrientation>[DeviceOrientation.portraitUp]);
  runApp(const InitRoute());
}
