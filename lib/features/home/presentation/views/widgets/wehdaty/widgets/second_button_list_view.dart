import 'package:flutter/material.dart';
import 'package:ibrahim_project/core/utiles/components.dart';
import 'package:ibrahim_project/features/home/presentation/views/widgets/wehdaty/add_wehda_view.dart';
import '../../../../../../../core/utiles/styles.dart';


class SecondButtonListView extends StatelessWidget {
  const SecondButtonListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: (){
              navigateTo(context, const AddWehdaView());
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
                      Text('داخلية', style: Styles.textStyle12.copyWith(color: Colors.blue)),
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
                  const Spacer(),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('رقم العقد:78387', style: Styles.textStyle12),
                      Text('المدينة:جدة', style: Styles.textStyle12),
                      Text('الشارع:حي الازهار', style: Styles.textStyle12),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => const SizedBox(height: 15),
        itemCount: 10,
      ),
    );
  }
}
