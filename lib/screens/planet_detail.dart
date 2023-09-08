import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

import 'package:planets_3d/model/planet_model.dart';
import 'package:planets_3d/utlis/const.dart';
import 'package:planets_3d/widgets/info_widget.dart';
import 'package:planets_3d/widgets/starfield.dart';

class PlanetDetailPage extends StatelessWidget {
  const PlanetDetailPage({
    Key? key,
    required this.planet,
  }) : super(key: key);
  final PlanetModel planet;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StarfieldWidget(
        child: Stack(
          children: [
            Column(children: [
              SizedBox(height: 100.h),
              SizedBox(
                height: 220.h,
                width: 220.w,
                child: ModelViewer(
                  src: "assets/${planet.name.toLowerCase()}.glb",
                  autoRotate: true,
                  autoPlay: true,
                ),
              ),
              Text(planet.name, style: Styles.bigTextStyle),
              Expanded(
                  child: Container(
                      width: Get.width,
                      margin: EdgeInsets.all(16.sp),
                      padding: EdgeInsets.all(16.sp),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r),
                          color: Colorss.themeNeon2.withOpacity(0.1)),
                      child: Column(
                        children: [
                          InfoWidget(
                              txt01: "Diameter:",
                              txt02: planet.diameter.toString()),
                          InfoWidget(
                              txt01: "Satellite:",
                              txt02: planet.satellite.toString()),
                          InfoWidget(txt01: "Day:", txt02: planet.day),
                          InfoWidget(txt01: "Year:", txt02: planet.year),
                          Padding(
                            padding: EdgeInsets.only(left: 32.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Description:",
                                    textAlign: TextAlign.left,
                                    style: Styles.mediumTextStyle),
                                SizedBox(
                                  width: 16.w,
                                ),
                                Text(
                                  planet.description,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 15,
                                  style: Styles.smallTextStyle
                                      .copyWith(color: Colorss().textSoftColor),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ))),
            ]),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 40.h),
                child: IconButton(
                  icon: const Icon(Icons.arrow_back_ios_new_outlined,
                      color: Colorss.textColor),
                  onPressed: Get.back,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
