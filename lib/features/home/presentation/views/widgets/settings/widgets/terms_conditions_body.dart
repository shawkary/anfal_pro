import 'package:flutter/material.dart';
import '../../../../../../../core/utiles/styles.dart';

class TermsConditionsBody extends StatelessWidget {
  const TermsConditionsBody({super.key});

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
              Text('الشروط والاحكام',
                  style:
                      Styles.textStyle14.copyWith(fontWeight: FontWeight.w700)),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('شروط وأحكام التطبيق "',
                    style: Styles.textStyle16
                        .copyWith(fontWeight: FontWeight.w600)),
                const SizedBox(height: 20),
                Text('مقدمة:',
                    style: Styles.textStyle16
                        .copyWith(fontWeight: FontWeight.w600)),
                const Text('''
هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق.
'''),
                Text('الاستخدام:',
                    style: Styles.textStyle16
                        .copyWith(fontWeight: FontWeight.w600)),
                const Text('''
يُسمح فقط للأشخاص الذين تزيد أعمارهم عن 18 عامًا باستخدام التطبيق.
يجب على المستخدمين إنشاء حساب وإدخال معلوماتهم الشخصية بشكل صحيح.
يجب على المستخدمين الحفاظ على سرية معلوماتهم الشخصية وكلمات المرور الخاصة بهم.
يُحظر استخدام التطبيق لأي غرض غير قانوني أو ضار.
'''),
                Text('الخدمات:',
                    style: Styles.textStyle16
                        .copyWith(fontWeight: FontWeight.w600)),
                const Text('''
يقدم التطبيق مجموعة واسعة من الخدمات  البيع والشراء ، بما في ذلك:
بيع وشراء المنتجات
بيع وشراء المنتجات
بيع وشراء المنتجات
بيع وشراء المنتجات
بيع وشراء المنتجات
وغيرها.

يجب على التطبيق التأكد من أن جميع المستخدمين على دراية بشروط وأحكام استخدام التطبيق.
              ''')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
