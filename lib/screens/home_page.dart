import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:planets_3d/screens/planet_list_page.dart';
import 'package:planets_3d/utlis/const.dart';
import 'package:planets_3d/widgets/button.dart';
import 'package:planets_3d/widgets/starfield.dart';
import 'package:planets_3d/widgets/type_rich_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StarfieldWidget(
            child: Column(
      children: [
        SizedBox(height: 100.h),
        Lottie.asset("assets/json/astronaut.json",
            fit: BoxFit.cover, height: 200.h, width: 200.w),
        SizedBox(height: 50.h),
        SizedBox(
          height: 300.h,
          width: Get.width,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32.w),
                  child: TypeRichText(
                    text: TextSpan(
                      text: "Welcome to Interstellar, explorer.",
                      style: Styles.bigTitleStyle
                          .copyWith(fontWeight: FontWeight.bold),
                      children: <TextSpan>[
                        TextSpan(
                            text:
                                "\nAre you ready to get to know the planets with me?_",
                            style: Styles.smallTextStyle),
                      ],
                    ),
                    duration: 8000.ms,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: ButtonWidget(
                    txt: "Let's Explore...",
                    color: Colorss.themeNeon1,
                    iconYes: true,
                    icon: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.white.withOpacity(0.8),
                    ),
                    function: () => Get.to(const PlanetListPage())).animate(
                  onComplete: (controller) {
                    controller.forward(from: 0.0);
                  },
                ).shimmer(duration: 1300.ms, delay: 1300.ms),
              )
            ],
          ),
        )
      ],
    )));
  }
}
