import 'package:flutter/material.dart';
import '../../../../../../../core/custom_widgets/material_button.dart';
import '../../../../../../../core/utiles/components.dart';
import '../../../../../../../core/utiles/styles.dart';
import '../../../home_view.dart';


class ConfirmDetailsTwoButtons extends StatelessWidget {
  const ConfirmDetailsTwoButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomButton(
              onPressed: () {
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
                          child: Icon(
                            Icons.check_circle,
                            size: 80,
                            color: Colors.blue,
                          ),
                        ),
                        Text(
                          'تم ارسال طلبك بنجاح',
                          style: Styles.textStyle25.copyWith(color: Colors.blue),
                        ),
                        Text(
                          'نحن سعداء من اجلك 🎉',
                          style: Styles.textStyle16
                              .copyWith(color: Colors.grey.shade700),
                        ),
                        const SizedBox(height: 20),
                        CustomButton(
                          onPressed: () {
                            navigateTo(context, const HomeView());
                          },
                          text: 'مشاهدة التفاصيل',
                        )
                      ],
                    ),
                  ),
                );
              },
              buttonColor: const Color(0xff01B2F8),
              text: 'قبول العرض'),
        ),
        const SizedBox(width: 15),
        Expanded(
          child: CustomButton(
              onPressed: (){
                showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Directionality(
                        textDirection: TextDirection.rtl,
                        child: Container(
                          padding: const EdgeInsets.all(15),
                          height: 270,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('ارسال سبب الرفض', style: Styles.textStyle16,),
                              const SizedBox(height: 5),
                              TextFormField(
                                maxLines: 5,
                                decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: 'تعليق',
                                    hintStyle: Styles.textStyle12,
                                    contentPadding: EdgeInsets.zero),
                              ),
                              const SizedBox(height: 10),
                              CustomButton(
                                onPressed: (){
                                  navigateTo(context, const HomeView());
                                },
                                text: 'مشاهدة التفاصيل',
                                height: 60,
                              )
                            ],
                          ),
                        ),
                      );
                    },
                );
              },
              buttonColor: Colors.grey.shade400,
              text: 'رفض العرض'),
        ),
      ],
    );
  }
}
