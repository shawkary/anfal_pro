import 'package:flutter/material.dart';
import 'package:ibrahim_project/core/utiles/components.dart';
import 'package:ibrahim_project/features/login/presentation/views/login_view.dart';
import 'package:ibrahim_project/features/on_boarding/presentation/views/widgets/smooth_page_indicator.dart';
import 'custom_page_view.dart';


class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    bool isLast = false;
    return Column(
      children: [
        CustomPageIndicator(controller),
        CustomPageView(
          controller,
          onPressed: () {
            controller.nextPage(
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeIn);
            if(isLast){
              navigateAndFinish(context, const LoginView());
            }
          },
          onPageChanged: (index) {
            if(index == 2){
              isLast = true;
            }else{
              isLast = false;
            }
          },
        ),
      ],
    );
  }
}
