import 'package:flutter/material.dart';

import 'current_order_list_view_item.dart';


class CurrentOrderListView extends StatelessWidget {
  const CurrentOrderListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
      child: ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => const CurrentOrderListViewItem(),
        separatorBuilder: (context, index) => const SizedBox(height: 15),
        itemCount: 7,
      ),
    );
  }
}
