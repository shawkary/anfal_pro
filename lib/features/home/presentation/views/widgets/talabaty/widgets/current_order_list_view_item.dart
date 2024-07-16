import 'package:flutter/material.dart';
import 'package:ibrahim_project/core/utiles/components.dart';
import 'package:ibrahim_project/features/home/presentation/views/widgets/talabaty/confirm_details.dart';
import '../../../../../../../core/utiles/styles.dart';


class CurrentOrderListViewItem extends StatelessWidget {
  const CurrentOrderListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        navigateTo(context, const ConfirmDetails());
      },
      child: Container(
        padding: const EdgeInsets.all(5),
        height: 100,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('اسم الوحدة', style: Styles.textStyle14),
                Row(
                  children: [
                    Text('الطلبات الحالية', style: Styles.textStyle12.copyWith(color: Colors.blue)),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Container(color: Colors.grey.shade300, width: 2, height: 20),
                    ),
                    Text('تم اسنادة للمسؤل', style: Styles.textStyle12.copyWith(color: Colors.red)),
                  ],
                ),
              ],
            ),
            const Spacer(),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('تاريخ الطلب :12-8-2020', style: Styles.textStyle12),
                Text('رقم الطلب :78387', style: Styles.textStyle12),
                Text('رقم العقد :78387', style: Styles.textStyle12),
              ],
            ),
            const Spacer(),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('رقم الوحدة:78387', style: Styles.textStyle12),
                Text('رقم العمارة:78387', style: Styles.textStyle12),
                Text('كود العمارة:6827687', style: Styles.textStyle12),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
