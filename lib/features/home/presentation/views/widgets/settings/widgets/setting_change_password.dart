import 'package:flutter/material.dart';
import 'package:ibrahim_project/core/custom_widgets/material_button.dart';
import 'package:ibrahim_project/core/custom_widgets/text_form_field.dart';
import '../../../../../../../core/utiles/components.dart';
import '../../../../../../../core/utiles/styles.dart';
import '../../../home_view.dart';


class ChangePassword extends StatelessWidget {
  const ChangePassword({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        showModalBottomSheet(
          context: context,
          builder: (context) {
            return Directionality(
              textDirection: TextDirection.rtl,
              child: SizedBox(
                height: 390,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Text('تغيير كلمة السر', style: Styles.textStyle18.copyWith(color: Colors.blue)),
                      const SizedBox(height: 10),
                      const CustomFormField(
                        hintText: 'كلمة المرور القديمة',
                        prefixIcon: Icon(Icons.lock_open),
                        suffixIcon: Icon(Icons.visibility_off_outlined),
                      ),
                      const SizedBox(height: 12),
                      const CustomFormField(
                        hintText: 'كلمة المرور الجديدة',
                        prefixIcon: Icon(Icons.lock_open),
                        suffixIcon: Icon(Icons.visibility_off_outlined),
                      ),
                      const SizedBox(height: 12),
                      const CustomFormField(
                        hintText: 'تأكيد كلمة المرور الجديدة',
                        prefixIcon: Icon(Icons.lock_open),
                        suffixIcon: Icon(Icons.visibility_off_outlined),
                      ),
                      const SizedBox(height: 16),
                      CustomButton(
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return Directionality(
                                textDirection: TextDirection.rtl,
                                child: Container(
                                  padding: const EdgeInsets.all(25),
                                  height: 400,
                                  child: Column(
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(top: 70.0, bottom: 50),
                                        child: Icon(
                                          Icons.check_circle,
                                          size: 80,
                                          color: Colors.blue,
                                        ),
                                      ),
                                      Text(
                                        'تم تغيير كلمة السر بنجاح',
                                        style: Styles.textStyle25.copyWith(color: Colors.blue),
                                      ),
                                      Text(
                                        'يمكنك تسجيل الدخول الآن باستخدام كلمة السر الجديدة.',
                                        style: Styles.textStyle14
                                            .copyWith(color: Colors.grey.shade700),
                                      ),
                                      const SizedBox(height: 20),
                                      CustomButton(
                                        onPressed: () {
                                          navigateTo(context, const HomeView());
                                        },
                                        height: 60,
                                        text: 'الرجوع للرئيسية',
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        height: 60,
                        text: 'تغيير كلمة السر',
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.shade200
            ),
            child: const Icon(Icons.lock_open),
          ),
          const SizedBox(width: 10),
          Text('تغير كلمة السر', style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w700)),
          const Spacer(),
          const Icon(Icons.arrow_forward_ios_sharp, color: Colors.grey, size: 20)
        ],
      ),
    );
  }
}
