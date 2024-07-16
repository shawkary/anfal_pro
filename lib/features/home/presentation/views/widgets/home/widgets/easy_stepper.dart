import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';
import 'package:ibrahim_project/features/home/presentation/manager/home_cubit/cubit.dart';

class CustomEasyStepper extends StatelessWidget {
  const CustomEasyStepper(this.cubit, {super.key});
  final HomeCubit cubit;

  @override
  Widget build(BuildContext context) {
    return EasyStepper(
      activeStep: cubit.activeStep,
      lineStyle: const LineStyle(
        lineLength: 110,
        lineSpace: 0,
        lineType: LineType.normal,
        defaultLineColor: Colors.grey,
        finishedLineColor: Colors.blue,
        lineThickness: 3,
      ),
      internalPadding: 7,
      showLoadingAnimation: false,
      showStepBorder: false,
      stepRadius: 10,
      activeStepTextColor: Colors.black87,
      finishedStepTextColor: Colors.black87,
      steps: [
        EasyStep(
          customStep: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
                width: cubit.activeStep >= 0 ? 0 : 1,
              ),
              shape: BoxShape.circle,
            ),
            child: CircleAvatar(
              backgroundColor: cubit.activeStep >= 0 ? Colors.blue : Colors.white,
              radius: 10,
              child: CircleAvatar(
                radius: 7,
                backgroundColor: cubit.activeStep >= 0 ? Colors.blue : Colors.grey,
                child: Icon(
                    Icons.check,
                    size: 15,
                    color: cubit.activeStep >= 0 ? Colors.white : Colors.grey),
              ),
            ),
          ),
          title: ' تأكيد الخدمات',
        ),
        EasyStep(
          customStep: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
                width: cubit.activeStep >= 1 ? 0 : 1,
              ),
              shape: BoxShape.circle,
            ),
            child: CircleAvatar(
              backgroundColor: cubit.activeStep >= 1 ? Colors.blue : Colors.white,
              radius: 10,
              child: CircleAvatar(
                radius: 7,
                backgroundColor:
                cubit.activeStep >= 1 ? Colors.blue : Colors.grey,
                child: Icon(
                    Icons.check,
                    size: 15,
                    color: cubit.activeStep >= 1 ? Colors.white : Colors.grey),
              ),
            ),
          ),
          title: 'اختيار الوحدة',
        ),
        EasyStep(
          customStep: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
                width: cubit.activeStep >= 2 ? 0 : 1,
              ),
              shape: BoxShape.circle,
            ),
            child: CircleAvatar(
              backgroundColor: cubit.activeStep >= 2 ? Colors.blue : Colors.white,
              radius: 10,
              child: CircleAvatar(
                radius: 7,
                backgroundColor:
                cubit.activeStep >= 2 ? Colors.blue : Colors.grey,
                child: Icon(
                    Icons.check,
                    size: 15,
                    color: cubit.activeStep >= 2 ? Colors.white : Colors.grey),
              ),
            ),
          ),
          title: 'تفاصيل الزيارة',
        ),
      ],
      onStepReached: (index) {
        cubit.changeActiveStep(index);
      },
    );
  }
}
