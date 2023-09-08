// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:lit_starfield/view/lit_starfield_container.dart';

class StarfieldWidget extends StatelessWidget {
  const StarfieldWidget({
    Key? key,
    required this.child,
  }) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: LitStarfieldContainer(
            backgroundDecoration:
                BoxDecoration(color: Colors.black.withOpacity(0.98)),
            scale: 1,
            velocity: 0.94,
            animated: true,
            depth: 0.99,
          ),
        ),
        Center(child: child),
      ],
    );
  }
}
