import 'package:flutter/material.dart';
import '../../../../../../../core/utiles/styles.dart';


class ConfirmDetailsFirstListView extends StatelessWidget {
  const ConfirmDetailsFirstListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
    );
  }
}
