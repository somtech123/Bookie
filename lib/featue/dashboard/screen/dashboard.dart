import 'package:bookie/core/utils/appcolor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/shared_widgets/custom_text_field.dart';
import '../controller/dashboard_controller.dart';
import '../widget/build_custom_icon_widget.dart';

class Dashboard extends StatelessWidget {
  static String path = '/Dashboard';
  Dashboard({super.key});

  var ctr = Get.put(DashboardController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.secondaryColor,
      appBar: AppBar(
        backgroundColor: AppColor.primaryColor,
        elevation: 0,
        title: const Text(
          'Home',
          style: TextStyle(
            color: AppColor.secondaryColor,
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          Row(
            children: [
              Text('Ngn'),
              SizedBox(
                width: 20.w,
              ),
              Icon(
                Icons.notifications_none,
                size: 50.sp,
              )
            ],
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  Container(
                    color: AppColor.primaryColor,
                    height: 130.h,
                    width: Get.width,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 20),
                      child: Column(
                        children: [
                          Container(
                            color: AppColor.secondaryColor,
                            height: 100.h,
                            width: Get.width,
                            child: Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 5, left: 20, right: 20),
                                child: CustomBorderTextField(
                                  header: 'From',
                                  headerStyle: const TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                  hintText: 'Select City',
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 5, left: 20, right: 20),
                                child: CustomBorderTextField(
                                  header: 'Destination',
                                  headerStyle: const TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                  hintText: 'Where to?',
                                ),
                              )
                            ]),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    height: 5.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        buildCustomIcon(context,
                            text: 'Flights',
                            icon: MaterialCommunityIcons.airplane,
                            color: AppColor.orangeColor),
                        buildCustomIcon(
                          context,
                          text: 'Train',
                          icon: MaterialCommunityIcons.train,
                          color: AppColor.greenColor,
                        ),
                        buildCustomIcon(context,
                            text: 'Check-In',
                            icon: MaterialCommunityIcons.check_circle_outline,
                            color: AppColor.pinkColor),
                        buildCustomIcon(context,
                            text: 'Bookings',
                            icon: MaterialCommunityIcons.book_multiple,
                            color: AppColor.primaryColor),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 15),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        buildCustomIcon(context,
                            text: 'Taxi',
                            icon: MaterialCommunityIcons.taxi,
                            color: AppColor.purpleColor),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
