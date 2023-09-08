// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:planets_3d/utlis/const.dart';

class InfoWidget extends StatelessWidget {
  const InfoWidget({
    Key? key,
    required this.txt01,
    required this.txt02,
  }) : super(key: key);
  final String txt01;
  final String txt02;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(width: 32.w),
            Text(txt01, style: Styles.mediumTextStyle),
            SizedBox(
              width: 16.w,
            ),
            Text(
              txt02,
              overflow: TextOverflow.ellipsis,
              style: Styles.smallTextStyle
                  .copyWith(color: Colorss().textSoftColor),
            ),
          ],
        ),
        Divider(
          height: 20,
          thickness: 1,
          color: Colorss().textSoftColor,
        ),
      ],
    );
  }
}
