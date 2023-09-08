// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:planets_3d/utlis/const.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    Key? key,
    required this.txt,
    required this.color,
    required this.function,
    required this.iconYes,
    required this.icon,
  }) : super(key: key);
  final String txt;
  final Color color;
  final Function() function;
  final bool iconYes;
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => function(),
      child: Container(
        height: 60.h,
        width: Get.width,
        margin: EdgeInsets.symmetric(horizontal: 32.w),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.r), color: color),
        child: Stack(
          children: [
            Center(
              child: Text(txt,
                  style: Styles.mediumTextStyle
                      .copyWith(color: Colors.white.withOpacity(0.8))),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: iconYes
                  ? Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: icon,
                    )
                  : null,
            )
          ],
        ),
      ),
    );
  }
}
