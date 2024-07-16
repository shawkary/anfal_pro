import 'package:flutter/material.dart';
import 'package:ibrahim_project/features/home/presentation/manager/home_cubit/cubit.dart';

import '../../../../../../../core/custom_widgets/material_button.dart';
import '../../../../../../../core/utiles/styles.dart';


class FirstStep extends StatelessWidget {
  const FirstStep(this.cubit, {super.key});
  final HomeCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('يمكنك مشاهدة كل الخدمات الذي قمت باختيارها',
            style: Styles.textStyle16.copyWith(fontSize: 15, fontWeight: FontWeight.w600)),
        Text('الاسعار الحالية مبدأيه سيتم المراجعه وارسال الاسعار النهائية',
            style: Styles.textStyle14.copyWith(fontSize: 11, color: Colors.grey)),
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('الخدمة الاولي', style: Styles.textStyle14),
            Text('(قمت باختيار 3 خدمات )',
                style: Styles.textStyle14.copyWith(color: Colors.grey)),
          ],
        ),
        const SizedBox(height: 7),
        Row(
          children: [
            Container(
              width: 52,
              height: 57,
              color: Colors.grey.shade100,
              child: const Icon(Icons.plumbing, size: 30, color: Color(0xff01B2F8)),
            ),
            const SizedBox(width: 10),
            const Text('سباكة')
          ],
        ),
        SizedBox(
          height: 160,
          child: ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 3),
                child: Row(
                  children: [
                    const Text('المغاسل', style: Styles.textStyle14),
                    const Spacer(),
                    Text('(550 ر.س )', style: Styles.textStyle14.copyWith(fontSize: 13, color: Colors.grey)),
                    IconButton(
                        onPressed: (){},
                        icon: const Icon(Icons.delete_outline, color: Colors.red,))
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) {
              return Container(height: 1, color: Colors.grey.shade300);
            },
            itemCount: 3,
          ),
        ),
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('الخدمة الثانية', style: Styles.textStyle14),
            Text('(قمت باختيار 3 خدمات )',
                style: Styles.textStyle14.copyWith(color: Colors.grey)),
          ],
        ),
        const SizedBox(height: 7),
        Row(
          children: [
            Container(
              width: 52,
              height: 57,
              color: Colors.grey.shade100,
              child: const Icon(Icons.plumbing, size: 30, color: Color(0xff01B2F8)),
            ),
            const SizedBox(width: 10),
            const Text('سباكة')
          ],
        ),
        SizedBox(
          height: 160,
          child: ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 3),
                child: Row(
                  children: [
                    const Text('المغاسل', style: Styles.textStyle14),
                    const Spacer(),
                    Text('(550 ر.س )', style: Styles.textStyle14.copyWith(fontSize: 13, color: Colors.grey)),
                    IconButton(
                        onPressed: (){},
                        icon: const Icon(Icons.delete_outline, color: Colors.red,))
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) {
              return Container(height: 1, color: Colors.grey.shade300);
            },
            itemCount: 3,
          ),
        ),
        const SizedBox(height: 15),
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: MaterialButton(
            onPressed: (){},
            color: Colors.blue,
            height: 50,
            child: const Row(
              children: [
                Icon(Icons.comment_bank_outlined, color: Colors.white),
                SizedBox(width: 6),
                Text('الاجمالي : ', style: TextStyle(color: Colors.white)),
                Text('500.000 ر.س', style: TextStyle(color: Colors.white))
              ],
            ),
          ),
        ),
        const SizedBox(height: 10),
        const Row(
          children: [
            Icon(Icons.error_outline, color: Colors.orange, size: 20),
            SizedBox(width: 5),
            Expanded(
              child: Text(
                'يرجى العلم أن طرق الدفع المتاحة هى تحويل بنكى – بطاقة إئتمانية – الدفع النقدى بعد الإنتهاء من الخدمة',
                style: TextStyle(fontSize: 12),
              ),
            )
          ],
        ),
        const SizedBox(height: 15),
        CustomButton(
            onPressed: (){
              cubit.firstStep();
            },
            text: 'استكمل الطلب'),
        const SizedBox(height: 10),
      ],
    );
  }
}
