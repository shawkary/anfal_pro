import 'package:flutter/material.dart';
import 'package:ibrahim_project/core/utiles/components.dart';
import 'package:ibrahim_project/features/on_boarding/presentation/views/on_boarding_view.dart';

class SplashViewViewBody extends StatefulWidget {
  const SplashViewViewBody({super.key});

  @override
  State<SplashViewViewBody> createState() => _SplashViewViewBodyState();
}

class _SplashViewViewBodyState extends State<SplashViewViewBody> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 6),
      () {
        navigateAndFinish(context, const OnBoardingView());
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Align(
            alignment: AlignmentDirectional.topStart,
            child: Image.asset(
              'assets/images/up.png',
              height: MediaQuery.sizeOf(context).height * .25,
            )),
        Align(
            alignment: AlignmentDirectional.center,
            child: Image.asset(
              'assets/images/anfal.png',
              width: MediaQuery.sizeOf(context).width * .6,
            )),
        Align(
            alignment: AlignmentDirectional.bottomEnd,
            child: Image.asset(
              'assets/images/down.png',
              height: MediaQuery.sizeOf(context).height * .15,
            )),
      ],
    );
  }
}
