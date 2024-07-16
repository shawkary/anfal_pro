import 'package:flutter/material.dart';
import 'package:ibrahim_project/features/login/presentation/login_cubit/cubit.dart';
import '../../../../../core/custom_widgets/material_button.dart';


class TwoButtons extends StatelessWidget {
  const TwoButtons(this.cubit, {super.key});
  final LoginCubit cubit;

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
                    cubit.toggleLoginRegister();
                  },
                  text: 'تسجيل الدخول',
                  radius: 30,
                  buttonColor: cubit.isLogin ? Colors.blue.shade700 : Colors.grey.shade100,
                  textColor: cubit.isLogin ? Colors.white : Colors.blue,
                  minWidth: MediaQuery.sizeOf(context).width * .45,
                ),
                CustomButton(
                  onPressed: ()
                  {
                    cubit.toggleLoginRegister();
                  },
                  buttonColor: cubit.isLogin ? Colors.grey.shade100 : Colors.blue.shade700,
                  text: 'إنشاء حسابك',
                  radius: 30,
                  textColor: cubit.isLogin ? Colors.blue : Colors.white,
                  minWidth: MediaQuery.sizeOf(context).width * .45,
                ),
              ],
            ),
          );
  }
}
