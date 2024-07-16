import 'package:flutter/material.dart';
import '../../../../../../../core/utiles/styles.dart';


class ConfirmDetailsContainer extends StatelessWidget {
  const ConfirmDetailsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      height: 70,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(15),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('اسم الوحدة', style: Styles.textStyle14),
          Spacer(),
          Row(
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
