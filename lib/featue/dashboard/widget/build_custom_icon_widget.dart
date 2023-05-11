import 'package:bookie/core/utils/appcolor.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget buildCustomIcon(
  BuildContext context, {
  required String text,
  required IconData icon,
  required Color color,
}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: SizedBox(
      child: Column(children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: color,
          child: Icon(
            icon,
            size: 30,
            color: AppColor.secondaryColor,
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Text(
          text,
        ),
      ]),
    ),
  );
}
