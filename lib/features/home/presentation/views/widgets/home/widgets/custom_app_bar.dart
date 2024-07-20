import 'package:flutter/material.dart';

import '../../../../../../../core/utiles/styles.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 20),
      height: 90,
      decoration: const BoxDecoration(
          color: Color(0xff006D96),
          borderRadius: BorderRadius.all(Radius.circular(15))
      ),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage('assets/images/phone1.png'),
          ),
          const SizedBox(width: 5),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('مرحبا بك,', style: Styles.textStyle14.copyWith(color: Colors.white)),
              Text('فيصل الفهاد', style: Styles.textStyle14.copyWith(color: Colors.white)),
            ],
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: CircleAvatar(
              radius: 20,
                backgroundColor: Colors.teal.shade400,
                child: const Icon(Icons.notifications_active_outlined, color: Colors.white,),
            ),
          )
        ],
      ),
    );
  }
}
