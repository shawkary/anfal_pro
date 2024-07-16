import 'package:flutter/material.dart';
import 'package:ibrahim_project/features/home/presentation/views/widgets/talabaty/widgets/confirm_details_container.dart';
import 'package:ibrahim_project/features/home/presentation/views/widgets/talabaty/widgets/confirm_details_two_buttons.dart';
import 'package:ibrahim_project/features/home/presentation/views/widgets/talabaty/widgets/confirm_details_first_list_view.dart';
import 'package:ibrahim_project/features/home/presentation/views/widgets/talabaty/widgets/confirm_details_second_list_view.dart';
import '../../../../../../../core/utiles/styles.dart';


class ConfirmDetailsBody extends StatelessWidget {
  const ConfirmDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('يمكنك مشاهدة كل الخدمات الذي قمت باختيارها',
                style: Styles.textStyle16.copyWith(fontSize: 15, fontWeight: FontWeight.w600)),
            Text('الاسعار الحالية مبدأيه سيتم المراجعه وارسال الاسعار النهائية',
                style: Styles.textStyle14.copyWith(fontSize: 11, color: Colors.grey)),
            const SizedBox(height: 15),
            const ConfirmDetailsContainer(),
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
            const ConfirmDetailsFirstListView(),
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
            const ConfirmDetailsSecondListView(),
            const SizedBox(height: 15),
            const Row(
                children: [
                  Icon(Icons.comment_bank_outlined, color: Colors.blue),
                  SizedBox(width: 6),
                  Text('الاجمالي : ', style: TextStyle(color: Colors.blue)),
                  Text('500.000 ر.س', style: TextStyle(color: Colors.blue))
                ],
              ),
            const SizedBox(height: 10),
            const ConfirmDetailsTwoButtons(),
          ],
        ),
      ),
    );
  }
}
