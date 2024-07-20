import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class CustomPageIndicator extends StatelessWidget {
  const CustomPageIndicator(this.controller, {super.key});
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
        controller: controller,
        count: 3,
        effect: CustomizableEffect(
            dotDecoration: DotDecoration(
              width: MediaQuery.sizeOf(context).width * .27,
              color: Colors.grey,
              borderRadius: BorderRadius.circular(10),
              height: 6,
            ),
            activeDotDecoration: DotDecoration(
              width: MediaQuery.sizeOf(context).width * .27,
              color: const Color(0xff01B2F8),
              borderRadius: BorderRadius.circular(10),
              height: 6,
            )
        )
    );
  }
}
