import 'package:flutter/material.dart';
import 'package:ibrahim_project/features/on_boarding/presentation/views/widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff01B2F8),
      body: SplashViewViewBody(),
    );
  }
}
