import 'package:flutter/material.dart';
import '../../../../../../../core/utiles/styles.dart';


class FinishedOrderListViewItem extends StatelessWidget {
  const FinishedOrderListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      height: 70,
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
                  Text('منتهي', style: Styles.textStyle12.copyWith(color: Colors.red)),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Container(color: Colors.grey.shade300, width: 2, height: 20),
                  ),
                  Text('4.5', style: Styles.textStyle12.copyWith(color: Colors.red)),
                  const Icon(Icons.star_border, color: Colors.orange, size: 15),
                  const SizedBox(width: 7),
                  Text('الفاتورة',
                      style: Styles.textStyle12.copyWith(color: Colors.blue, decoration: TextDecoration.underline)),
                ],
              ),
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
    );
  }
}
