import 'package:flutter/material.dart';
import 'package:ibrahim_project/features/home/presentation/manager/wehdaty_cubit/cubit.dart';
import '../../../../../../../core/custom_widgets/material_button.dart';


class WehdatyTwoButtons extends StatelessWidget {
  const WehdatyTwoButtons(this.cubit, {super.key});
  final WehdatyCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(35),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomButton(
            onPressed: ()
            {
              cubit.toggleTwoButtons();
            },
            text: ' وحدات صيانة داخلية',
            radius: 30,
            buttonColor: cubit.isFirst ? Colors.blue.shade700 : Colors.grey.shade100,
            textColor: cubit.isFirst ? Colors.white : Colors.blue,
            minWidth: MediaQuery.sizeOf(context).width * .45,
          ),
          CustomButton(
            onPressed: ()
            {
              cubit.toggleTwoButtons();
            },
            buttonColor: cubit.isFirst ? Colors.grey.shade100 : Colors.blue.shade700,
            text: ' وحدات صيانهة خارجية',
            radius: 30,
            textColor: cubit.isFirst ? Colors.blue : Colors.white,
            minWidth: MediaQuery.sizeOf(context).width * .45,
          ),
        ],
      ),
    );
  }
}
