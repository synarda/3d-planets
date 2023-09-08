import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:planets_3d/model/planet_model.dart';

class Colorss {
  static const themeNeon1 = Color(0xff156CF7);
  static const themeNeon2 = Color(0xff405E6F);
  static const textColor = Color(0xffafaeb6);
  final textSoftColor = const Color(0xffAAAAB3).withOpacity(0.5);
}

class Styles {
  static TextStyle get smallTextStyle => GoogleFonts.montserrat(
        fontSize: 15.sp,
        fontWeight: FontWeight.w500,
        color: Colorss.textColor,
      );
  static TextStyle get mediumTextStyle => GoogleFonts.montserrat(
        fontSize: 18.sp,
        fontWeight: FontWeight.w500,
        color: Colorss.textColor,
      );
  static TextStyle get bigTextStyle => GoogleFonts.montserrat(
        fontSize: 19.sp,
        fontWeight: FontWeight.w500,
        color: Colorss.textColor,
      );
  static TextStyle get smallTitleStyle => GoogleFonts.montserrat(
        fontSize: 19.sp,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      );
  static TextStyle get bigTitleStyle => GoogleFonts.montserrat(
        fontSize: 28.sp,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      );
}

class Planets {
  static final planets = <PlanetModel>[
    PlanetModel(
        id: 0,
        name: "Mercury",
        diameter: 4.884,
        satellite: 0,
        day: "59 Earth Day",
        year: "88 Earth Year",
        url: "https://www.neoldu.com/d/other/1-merkur.webp",
        description:
            "Mercury is the closest planet to the Sun in the solar system. The temperature of the planet Mercury is 500 degrees Celsius. Mercury has no atmosphere and its surface is rocky. Mercury's diameter is 4850 km. Mercury completes its rotation around itself in 59 days."),
    PlanetModel(
        id: 1,
        name: "Venus",
        diameter: 12.342,
        satellite: 0,
        day: "243 Earth Day",
        year: "225 Earth Year",
        url: "https://www.neoldu.com/d/other/2-venus.webp",
        description:
            "The temperature of the planet Venus is extremely high, averaging 400 degrees Celsius. While the other planets in the solar system rotate normally around themselves, Venus rotates in the opposite direction. Venus, the second closest planet to the Sun, is named after the Roman goddess Venus. Venus completes its revolution around the Sun in 224.7 days."),
    PlanetModel(
        id: 2,
        name: "Earth",
        diameter: 12.735,
        satellite: 1,
        day: "24 hour",
        year: "1 Earth Year",
        url: "https://www.neoldu.com/d/other/3-dunya.webp",
        description:
            "Earth is the third closest planet to the Sun and its only satellite is the Moon. Among the 8 planets, Earth is the only sphere where life exists. The diameter of the Earth is exactly 12,000 km. It rotates on its axis in 24 hours and around the sun in 365 days, 5 hours and 48 minutes. The Earth has a geoid shape, swollen at the equator and flattened at the poles."),
    PlanetModel(
        id: 3,
        name: "Mars",
        diameter: 6.767,
        satellite: 2,
        day: "24 hours 39 minutes",
        year: "687 Earth Day",
        url: "https://www.neoldu.com/d/other/4-mars.webp",
        description:
            "Mars is the fourth planet closest to the sun. It was named after Mars, the Roman goddess of war. Its temperature is between -80 and 160 degrees Celsius. Most of its atmosphere consists of carbon dioxide. Mars is called the 'Red Planet' because its surface is red in color. Mars completes its rotation around the Sun in 687 days."),
    PlanetModel(
        id: 4,
        name: "Jupiter",
        diameter: 142.324,
        satellite: 67,
        day: "10 hour",
        year: "12 Earth Year",
        url: "https://www.neoldu.com/d/other/5-jupiter.webp",
        description:
            "Jupiter has a total of 79 moons. The average temperature of the planet Jupiter is -140 degrees Celsius. Jupiter is the largest planet in the solar system. 1300 times bigger than the Earth, Jupiter completes its rotation around itself in 10 hours and around the sun in 12 years. It is named after Jupiter, the greatest god in Roman mythology."),
    PlanetModel(
        id: 5,
        name: "Saturn",
        diameter: 124.832,
        satellite: 62,
        day: "10.7 hour",
        year: "29 Earth Year",
        url: "https://www.neoldu.com/d/other/6-saturn.webp",
        description:
            "Saturn is far from the sun, so its temperature is -180 degrees Celsius. It completes its rotation around the Sun in 30 years. Saturn is surrounded by a ring of stones and ice. Saturn is the only planet with less density than water. For this reason, if there was a suitable ocean, Saturn would float and not sink on water."),
    PlanetModel(
        id: 6,
        name: "Uranus",
        diameter: 51.726,
        satellite: 27,
        day: "17 hour",
        year: "84 Earth Year",
        url: "https://www.neoldu.com/d/other/7-uranus.webp",
        description:
            "Uranus, the seventh planet closest to the Sun, is very far from Earth. The average temperature of Uranus is -215 degrees Celsius. Uranus completes its rotation around the Sun in 84 years and around itself in 11 hours."),
    PlanetModel(
        id: 7,
        name: "Neptun",
        diameter: 49.243,
        satellite: 14,
        day: "16 hour",
        year: "165 Earth Year",
        url: "https://www.neoldu.com/d/other/8-neptune.webp",
        description:
            "The average temperature of Neptune is -200 degrees Celsius. Neptune completes its rotation around the Sun in 165 years and its rotation around itself in 16 hours. Neptune, the farthest planet from the Sun, is rich in helium and hydrogen. Neptune is 4 times bigger than the Earth."),
  ];
}
