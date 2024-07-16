import 'package:flutter/material.dart';
import 'package:ibrahim_project/core/custom_widgets/text_form_field.dart';
import 'package:ibrahim_project/core/utiles/components.dart';
import 'package:ibrahim_project/features/home/presentation/views/home_view.dart';
import 'package:ibrahim_project/features/login/presentation/login_cubit/cubit.dart';
import '../../../../../core/custom_widgets/material_button.dart';
import '../../../../../core/utiles/styles.dart';


class LoginForm extends StatelessWidget {
  const LoginForm(this.cubit, {super.key});
  final LoginCubit cubit;

  @override
  Widget build(BuildContext context) {
    var formKey = GlobalKey<FormState>();
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('تسجيل الدخول', style: Styles.textStyle20.copyWith(color: const Color(0xff01B2F8))),
          const Text('مرحبًا بعودتك قم بتسجيل الدخول إلى حسابك', style: Styles.textStyle16),
          const SizedBox(height: 15),
          CustomFormField(
            controller: cubit.loginEmailController,
            prefixIcon: const Icon(Icons.email_outlined),
            hintText: 'الاسم بالكامل',
          ),
          const SizedBox(height: 15),
          CustomFormField(
            controller: cubit.loginPasswordController,
            prefixIcon: const Icon(Icons.lock_open),
            suffixIcon: IconButton(
                onPressed: (){
                  cubit.loginObscurePass();
                },
                icon: Icon(cubit.loginSecret ? Icons.visibility_off_outlined : Icons.visibility_outlined),
            ),
            hintText: 'كلمة المرور',
            obscureText: cubit.loginSecret,
          ),
          const SizedBox(height: 15),
          Text('نسيت كلمة المرور ؟',
              style: Styles.textStyle16.copyWith(color: const Color(0xff01B2F8))),
          const SizedBox(height: 15),
          CustomButton(
            onPressed: ()
            {
              if(formKey.currentState!.validate()){
                navigateAndFinish(context, const HomeView());
              }
            },
            text: 'تسجيل الدخول',
            buttonColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}
