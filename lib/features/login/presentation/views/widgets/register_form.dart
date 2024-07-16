import 'package:flutter/material.dart';
import 'package:ibrahim_project/core/custom_widgets/text_form_field.dart';
import 'package:ibrahim_project/features/login/presentation/login_cubit/cubit.dart';
import '../../../../../core/custom_widgets/material_button.dart';
import '../../../../../core/utiles/styles.dart';


class RegisterForm extends StatelessWidget {
  const RegisterForm(this.cubit, {super.key});
  final LoginCubit cubit;

  @override
  Widget build(BuildContext context) {
    var formKey = GlobalKey<FormState>();
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('انشاء حسابك بكل سهولة', style: Styles.textStyle20.copyWith(color: const Color(0xff01B2F8))),
          const Text('مرحبًايمكنك انشاء حسابك الان والتمتع بالخدمات', style: Styles.textStyle16),
          const SizedBox(height: 15),
          CustomFormField(
            controller: cubit.registerNameController,
              hintText: 'الاسم بالكامل',
          ),
          const SizedBox(height: 15),
          CustomFormField(
            controller: cubit.registerEmailController,
              hintText: 'البريد الالكتروني',
          ),
          const SizedBox(height: 15),
          CustomFormField(
            controller: cubit.registerPhoneController,
              hintText: 'رقم الجوال',
              suffixIcon: Padding(padding: const EdgeInsetsDirectional.only(top: 15),
                  child: Text('+966', style: TextStyle(color: Colors.grey.shade600),))
          ),
          const SizedBox(height: 15),
          CustomFormField(
            controller: cubit.registerPasswordController,
            suffixIcon: IconButton(
              onPressed: (){
                cubit.registerObscurePass();
              },
              icon: Icon(cubit.registerSecret ? Icons.visibility_off_outlined : Icons.visibility_outlined),
            ),
            hintText: 'كلمة المرور',
            obscureText: cubit.registerSecret,
          ),
          const SizedBox(height: 15),
           CustomFormField(
             controller: cubit.registerRePasswordController,
            suffixIcon: IconButton(
              onPressed: (){
                cubit.registerObscurePass();
              },
              icon: Icon(cubit.registerSecret ? Icons.visibility_off_outlined : Icons.visibility_outlined),
            ),
            hintText: 'تأكيد كلمة المرور',
             obscureText: cubit.registerSecret,
          ),
          const SizedBox(height: 15),
           Row(
             children: [
               Text('اوافق علي الشروط والاحكام',
                  style: Styles.textStyle14.copyWith(decoration: TextDecoration.underline)),
               const SizedBox(width: 5),
               GestureDetector(
                 onTap: (){
                   cubit.checkBox();
                 },
                   child: Icon(cubit.isChecked ? Icons.check_box : Icons.check_box_outline_blank,
                     color: cubit.isChecked ? Colors.blue : Colors.grey,
                     size: 20,))
             ],
           ),
          const SizedBox(height: 15),
          CustomButton(
            onPressed: ()
            {
              if(formKey.currentState!.validate()){
                showModalBottomSheet(
                  barrierColor: Colors.black.withOpacity(.7),
                    context: context,
                    builder: (context) => Container(
                      padding: const EdgeInsets.all(30),
                        height: 400,
                      width: double.infinity,
                      child: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 70.0, bottom: 50),
                            child: Icon(Icons.check_circle, size: 80, color: Colors.blue,),
                          ),
                          Text('تم إنشاء حسابك بنجاح',style: Styles.textStyle25.copyWith(color: Colors.blue),),
                          Text('🎉 نحن سعداء من اجلك',style: Styles.textStyle16.copyWith(color: Colors.grey.shade700),),
                          const SizedBox(height: 20),
                          CustomButton(
                              onPressed: ()
                              {
                                cubit.toggleLoginRegister();
                                Navigator.pop(context);
                              },
                            text: 'تسجيل الدخول',
                          )
                        ],
                      ),
                    ),
                );
              }
            },
            text: 'انشاء حسابك',
            buttonColor: cubit.isChecked ? Colors.blue : Colors.grey.shade400,
          ),
          const SizedBox(height: 15),
          CustomButton(
            onPressed: (){},
            buttonColor: Colors.white,
            borderSide: const BorderSide(width: 1),
            text: 'السابق',
            textColor: Colors.black,
          )
        ],
      ),
    );
  }
}