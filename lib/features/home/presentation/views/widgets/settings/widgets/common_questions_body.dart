import 'package:flutter/material.dart';
import 'package:ibrahim_project/core/custom_widgets/text_form_field.dart';

import '../../../../../../../core/utiles/styles.dart';

class CommonQuestionsBody extends StatelessWidget {
  const CommonQuestionsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                      decoration: BoxDecoration(border: Border.all()),
                      child: const Icon(Icons.arrow_back, size: 15)),
                ),
                const SizedBox(width: 10),
                Text('الاسئلة الشائعه',
                    style:
                    Styles.textStyle14.copyWith(fontWeight: FontWeight.w700)),
              ],
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                CustomFormField(
                  prefixIcon: Icon(Icons.search, color: Colors.grey),
                  hintText: 'بحث...',
                ),
                const SizedBox(height: 30),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('كيف الانفال العقارية', style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w700)),
                      Icon(Icons.arrow_downward)
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}
