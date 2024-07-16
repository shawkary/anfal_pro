import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibrahim_project/features/home/presentation/manager/home_cubit/cubit.dart';
import 'package:ibrahim_project/features/home/presentation/manager/home_cubit/states.dart';
import 'package:ibrahim_project/features/home/presentation/views/widgets/home/widgets/first_step.dart';
import 'package:ibrahim_project/features/home/presentation/views/widgets/home/widgets/second_step.dart';
import 'package:ibrahim_project/features/home/presentation/views/widgets/home/widgets/third_step.dart';
import 'easy_stepper.dart';


class RequestPreviewBody extends StatelessWidget {
  const RequestPreviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeStates>(
      builder: (BuildContext context, HomeStates state) {
        HomeCubit cubit = HomeCubit.get(context);
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomEasyStepper(cubit),
                if(cubit.activeStep == 0)  FirstStep(cubit),
                if(cubit.activeStep == 1)  SecondStep(cubit),
                if(cubit.activeStep == 2)  ThirdStep(cubit)
              ],
            ),
          ),
        );
      },
    );
  }
}
