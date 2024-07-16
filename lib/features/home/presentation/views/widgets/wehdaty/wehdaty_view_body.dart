import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibrahim_project/features/home/presentation/manager/wehdaty_cubit/cubit.dart';
import 'package:ibrahim_project/features/home/presentation/manager/wehdaty_cubit/states.dart';
import 'package:ibrahim_project/features/home/presentation/views/widgets/wehdaty/widgets/custom_row.dart';
import 'package:ibrahim_project/features/home/presentation/views/widgets/wehdaty/widgets/first_button_list_view.dart';
import 'package:ibrahim_project/features/home/presentation/views/widgets/wehdaty/widgets/second_button_list_view.dart';
import 'package:ibrahim_project/features/home/presentation/views/widgets/wehdaty/widgets/wehdaty_two_buttons.dart';
import '../../../../../../core/utiles/styles.dart';


class WehdatyViewBody extends StatelessWidget {
  const WehdatyViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WehdatyCubit, WehdatyStates>(
      builder: (BuildContext context, state) {
        WehdatyCubit cubit = WehdatyCubit.get(context);
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('وحداتي', style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600)),
              const SizedBox(height: 30),
              WehdatyTwoButtons(cubit),
              const SizedBox(height: 20),
              CustomRow(cubit),
              const SizedBox(height: 24),
              cubit.isFirst ? const FirstButtonListView() : const SecondButtonListView(),
            ],
          ),
        );
      },
    );
  }
}
