import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/utils/appcolor.dart';
import '../controller/splash_scren_controller.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});
  final SplashScreenController ctr = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: Center(child: GetBuilder<SplashScreenController>(
          builder: (controller) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/airplane.jpg',
                  height: 150,
                ),
                SizedBox(
                  height: 20.h,
                ),
                // Obx(
                //   () =>
                Opacity(
                    opacity: ctr.animation.value,
                    child: const Text(
                      'Bookie, Travel With Ease and Safe',
                      style: TextStyle(
                          color: AppColor.secondaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )),
                //  )
              ],
            );
          },
        )),
      ),
    );
  }
}
