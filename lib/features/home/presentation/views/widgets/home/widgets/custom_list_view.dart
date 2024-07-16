import 'package:flutter/material.dart';
import 'package:ibrahim_project/core/utiles/components.dart';
import 'package:ibrahim_project/features/home/presentation/views/widgets/home/service_details.dart';

import '../../../../../../../core/utiles/styles.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> texts = ['سباكة', 'كهرباء', 'دهانات', 'بلاط', 'ابواب وشبابيك', 'تبريد وتكيف', 'مصاعد',
    ];

    List<Widget> icons = [
      const Icon(Icons.plumbing, size: 30, color: Color(0xff01B2F8)),
      const Icon(Icons.electric_bolt, size: 30, color: Color(0xff01B2F8)),
      const Icon(Icons.format_paint, size: 30, color: Color(0xff01B2F8)),
      const Icon(Icons.grid_on_rounded, size: 30, color: Color(0xff01B2F8)),
      const Icon(Icons.door_back_door, size: 30, color: Color(0xff01B2F8)),
      const Icon(Icons.air, size: 30, color: Color(0xff01B2F8)),
      const Icon(Icons.elevator, size: 30, color: Color(0xff01B2F8)),
    ];
    return Expanded(
      child: ListView.separated(
        itemBuilder: (context, index) => GestureDetector(
          onTap: (){
            navigateTo(context, const ServiceDetails());
          },
          child: Row(
            children: [
              Container(
                width: 52,
                height: 57,
                color: Colors.grey.shade100,
                child: icons[index],
              ),
              const SizedBox(width: 15),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(5),
                  height: 57,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1, color: Colors.grey.shade200)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(texts[index]),
                          const Icon(Icons.navigate_next,
                              color: Colors.grey, size: 20)
                        ],
                      ),
                      Text('هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة',
                          style: Styles.textStyle14
                              .copyWith(fontSize: 12.3, color: Colors.grey)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        separatorBuilder: (context, index) => const SizedBox(height: 12),
        itemCount: icons.length,
      ),
    );
  }
}
