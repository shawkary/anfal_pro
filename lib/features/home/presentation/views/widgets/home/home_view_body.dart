import 'package:flutter/material.dart';
import 'package:ibrahim_project/core/custom_widgets/text_form_field.dart';
import 'package:ibrahim_project/core/utiles/styles.dart';
import 'package:ibrahim_project/features/home/presentation/views/widgets/home/widgets/custom_app_bar.dart';
import 'package:ibrahim_project/features/home/presentation/views/widgets/home/widgets/custom_list_view.dart';


class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(),
          const SizedBox(height: 14),
          const CustomFormField(
            hintText: 'بحث...',
            prefixIcon: Icon(Icons.search, color: Colors.grey),
          ),
          const SizedBox(height: 20),
          Text('يمكنك الاختيار ما بين الخدمات المتاحة',
              style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600)),
          Text('اكثر من 21 خدمة متاحة',
              style: Styles.textStyle14.copyWith(fontSize: 12, color: Colors.grey)),
          const SizedBox(height: 10),
          const CustomListView(),
        ],
      ),
    );
  }
}
