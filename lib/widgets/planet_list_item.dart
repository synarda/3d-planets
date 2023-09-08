// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:planets_3d/model/planet_model.dart';
import 'package:planets_3d/screens/planet_detail.dart';
import 'package:planets_3d/utlis/const.dart';

class PlanetListItemWidget extends StatelessWidget {
  const PlanetListItemWidget({
    Key? key,
    required this.planet,
  }) : super(key: key);
  final PlanetModel planet;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(PlanetDetailPage(planet: planet)),
      child: Container(
        height: 120.h,
        width: Get.width,
        margin: EdgeInsets.symmetric(horizontal: 32.w, vertical: 8.h),
        decoration: BoxDecoration(
            color: Colorss.themeNeon2.withOpacity(0.2),
            borderRadius: BorderRadius.circular(20.r)),
        child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100.r),
              child: Image.network(
                planet.url,
                fit: BoxFit.cover,
                height: 80.h,
                width: 80.w,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(planet.name, style: Styles.bigTextStyle),
              SizedBox(height: 8.h),
              Row(
                children: [
                  Text(
                    "Diameter: ${planet.diameter} KM",
                    style: Styles.smallTextStyle.copyWith(
                        fontSize: 9.sp, color: Colorss().textSoftColor),
                  )
                ],
              )
            ],
          ),
          const Spacer(),
          Padding(
            padding: EdgeInsets.all(16.0.sp),
            child: const Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colorss.textColor,
            ),
          )
        ]),
      ).animate().move(
          begin: Offset(planet.id % 2 == 0 ? 500 : -500, 0),
          delay: 0.ms,
          duration: 2000.ms,
          curve: Curves.easeInOutCubic),
    );
  }
}
