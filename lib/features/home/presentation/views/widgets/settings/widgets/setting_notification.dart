import 'package:flutter/material.dart';
import 'package:ibrahim_project/core/utiles/styles.dart';


class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.shade200
          ),
          child: const Icon(Icons.notifications_none_sharp),
        ),
        const SizedBox(width: 10),
        Text('الاشعارات', style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w700)),
        const Spacer(),
        const Icon(Icons.toggle_on, color: Colors.blue, size: 40)
      ],
    );
  }
}
