import 'package:flutter/material.dart';
import 'package:ibrahim_project/core/custom_widgets/material_button.dart';
import 'package:ibrahim_project/core/custom_widgets/text_form_field.dart';

import '../../../../../../../core/utiles/styles.dart';


class AddWehdaViewBody extends StatelessWidget {
  const AddWehdaViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('وحداتي', style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600)),
            const SizedBox(height: 20),
            Text('اضافة وحدة جديدة',
                style: Styles.textStyle14.copyWith(fontSize: 15, fontWeight: FontWeight.w600)),
            const Text('سيتم اضافة الوحدة في الصيانة الخارجية فقط',
                style: Styles.textStyle12),
            const SizedBox(height: 20),
            const Text('العنوان'),
            const CustomFormField(hintText: 'العنوان'),
            const SizedBox(height: 10),
            const Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('رقم العقار'),
                      CustomFormField(hintText: 'رقم 29 شرق'),
                    ],
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('رقم الشقة'),
                      CustomFormField(hintText: 'رقم 29 شرق'),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Text('اسم الشارع'),
            const CustomFormField(hintText: 'اسم الشارع'),
            const SizedBox(height: 10),
            const Text('المدينة'),
            const CustomFormField(hintText: 'المدينة'),
            const SizedBox(height: 10),
            const Text('تحديد العنوان'),
            const CustomFormField(hintText: 'تحديد العنوان'),
            const SizedBox(height: 10),
            const Text('رقم العمارة'),
            const CustomFormField(hintText: 'رقم العمارة'),
            const SizedBox(height: 10),
            const Text('رقم الوحدة'),
            const CustomFormField(hintText: 'رقم الوحدة'),
            const SizedBox(height: 10),
            const Text('رقم التواصل'),
            const CustomFormField(hintText: 'رقم الجوال'),
            const SizedBox(height: 10),
            const Text('رقم بديل'),
            const CustomFormField(hintText: 'رقم بديل'),
            const SizedBox(height: 15),
            CustomButton(
                onPressed: (){Navigator.pop(context);},
              text: 'حفظ الوحدة',
              height: 60,
              buttonColor: const Color(0xff01B2F8),
            )
          ],
        ),
      ),
    );
  }
}
