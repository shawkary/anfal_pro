import 'package:flutter/material.dart';
import 'finished_order_list_view_item.dart';


class FinishedOrderListView extends StatelessWidget {
  const FinishedOrderListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
      child: ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => const FinishedOrderListViewItem(),
        separatorBuilder: (context, index) => const SizedBox(height: 15),
        itemCount: 7,
      ),
    );
  }
}
