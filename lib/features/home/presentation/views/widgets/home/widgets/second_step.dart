import 'package:flutter/material.dart';
import 'package:ibrahim_project/core/utiles/components.dart';
import 'package:ibrahim_project/core/utiles/styles.dart';
import 'package:ibrahim_project/features/home/presentation/manager/home_cubit/cubit.dart';
import 'package:ibrahim_project/features/login/presentation/views/login_view.dart';
import '../../../../../../../core/custom_widgets/material_button.dart';


class SecondStep extends StatelessWidget {
  const SecondStep(this.cubit, {super.key});
  final HomeCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 7),
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
                  cubit.toggleInternalExternalButton();
                },
                text: 'صيانة داخلية',
                radius: 30,
                buttonColor: cubit.isInternal ? Colors.blue.shade700 : Colors.grey.shade100,
                textColor: cubit.isInternal ? Colors.white : Colors.blue,
                minWidth: MediaQuery.sizeOf(context).width * .45,
              ),
              CustomButton(
                onPressed: ()
                {
                  cubit.toggleInternalExternalButton();
                  navigateTo(context, const LoginView());
                },
                buttonColor: cubit.isInternal ? Colors.grey.shade100 : Colors.blue.shade700,
                text: 'صيانة خارجية',
                radius: 30,
                textColor: cubit.isInternal ? Colors.blue : Colors.white,
                minWidth: MediaQuery.sizeOf(context).width * .45,
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        Text('اختر الوحدة الخاصة بك',
            style: Styles.textStyle16.copyWith(fontSize: 15, fontWeight: FontWeight.w600)),
        const Text('يمكنك اختيار واحدة واحدة فقط',
        style: TextStyle(fontSize: 11, fontWeight: FontWeight.w400, color: Colors.grey),),
        const SizedBox(height: 15),
        SizedBox(
          height: 400,
          child: ListView.separated(
              itemBuilder: (context, index) => Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  border: Border.all(style: BorderStyle.solid, color: Colors.grey.shade300),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('اسم الوحدة'),
                        GestureDetector(
                          onTap: (){
                            cubit.changeCheckBox1(index);
                          },
                            child: Icon(
                              cubit.isChecked1[index] ? Icons.circle : Icons.circle_outlined,
                              size: 15,
                              color: cubit.isChecked1[index] ? Colors.blue : Colors.grey,
                            )),
                      ],
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('رقم الوحدة:78387', style: Styles.textStyle12),
                        Text('رقم العمارة:78387', style: Styles.textStyle12),
                        Text('كود العمارة:6827687', style: Styles.textStyle12),
                      ],
                    )
                  ],
                ),
              ),
            separatorBuilder: (context, index) => const SizedBox(height: 10),
            itemCount: 6,
          ),
        ),
        const SizedBox(height: 15),
        CustomButton(
            onPressed: ()
            {
              cubit.secondStep();
            },
          text: 'التالي',
          height: 60,
        )
      ],
    );
  }
}
