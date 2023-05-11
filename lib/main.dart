import 'dart:io';

import 'package:bookie/core/routes/routes.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'core/utils/appcolor.dart';
import 'featue/splash/screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize:
          Platform.isIOS ? const Size(375, 812) : Size(Get.height, Get.width),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, _) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Bookie',
        theme: ThemeData(
            scaffoldBackgroundColor: AppColor.secondaryColor,
            fontFamily: GoogleFonts.dmSans().fontFamily),
        home: SplashScreen(),
        smartManagement: SmartManagement.keepFactory,
        getPages: AppPage.appPages,
      ),
    );
  }
}
