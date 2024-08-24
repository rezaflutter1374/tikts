// ignore: unused_import
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
// ignore: unused_import
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:my_cinenow/Card.dart';
import 'package:my_cinenow/Confirmation_page.dart';
import 'package:my_cinenow/Home_tikets.dart';
import 'package:my_cinenow/Payment%D9%80page_card.dart';
import 'package:my_cinenow/Processing.dart';
import 'package:my_cinenow/creat.dart';
import 'package:my_cinenow/login.dart';
import 'package:my_cinenow/opening.dart';
import 'package:my_cinenow/sms_page.dart';

void main() {
  // Set the color of the status bar and navigation bar
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Color(0xFFFAC937),
      // Change to your desired color
      statusBarBrightness: Brightness.light,
      systemNavigationBarContrastEnforced: true,
      systemNavigationBarDividerColor: Colors.white,
      systemStatusBarContrastEnforced: false,
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarColor: Color(0xFFFAC937),
      // Change to your desired color
      systemNavigationBarIconBrightness: Brightness.light,
    ),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        checkerboardRasterCacheImages: false,
        debugShowMaterialGrid: false,
        useInheritedMediaQuery: false,
        checkerboardOffscreenLayers: false,
        //Route GETX FLUTTER PAGES ROUTE  GETMATERILAPP
        home: const opning_page(),
        initialRoute: '/',
        getPages: [
          GetPage(
            name: '/',
            page: () => const opning_page(),
          ),
          GetPage(
            name: '/creat',
            page: () => const creat_account(),
          ),
          GetPage(
            name: '/sms_page',
            page: () => const Verification(),
          ),
          GetPage(
            name: '/login',
            page: () => const Login_page(),
          ),
          GetPage(
            name: '/Card',
            page: () => const Out_check_page(),
          ),
          GetPage(
            name: '/payment',
            page: () => const Payment_page(),
          ),
          GetPage(
            name: '/Confirmation_page',
            page: () => const Confirmation(),
          ),
          GetPage(
            name: '/Processing',
            page: () => const LoadingPage(),
          ),
          GetPage(
            name: '/Home_tikets',
            page: () => const HomeTikets_page(),
          ),
        ]);
  }
}
