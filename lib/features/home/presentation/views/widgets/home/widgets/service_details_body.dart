import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibrahim_project/core/custom_widgets/material_button.dart';
import 'package:ibrahim_project/core/utiles/components.dart';
import 'package:ibrahim_project/core/utiles/styles.dart';
import 'package:ibrahim_project/features/home/presentation/manager/home_cubit/cubit.dart';
import 'package:ibrahim_project/features/home/presentation/manager/home_cubit/states.dart';
import 'package:ibrahim_project/features/home/presentation/views/widgets/home/request_preview.dart';
import 'package:ibrahim_project/features/home/presentation/views/widgets/home/widgets/service_details_list_view.dart';


class ServiceDetailsBody extends StatelessWidget {
  const ServiceDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeStates>(
      builder: (BuildContext context, state) {
        HomeCubit cubit = HomeCubit.get(context);
        return CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset('assets/images/pumbling.png', fit: BoxFit.fill, width: double.infinity),
                        const SizedBox(height: 24),
                        Text('اختر نوع الخدمة', style: Styles.textStyle16.copyWith(fontSize: 15, fontWeight: FontWeight.w600)),
                        Text('يمكنك اختيار خدمة واحدة او اكثر', style: Styles.textStyle14.copyWith(fontSize: 12, color: Colors.grey)),
                      ]
                  ),
                )
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    ServiceDetailsListView(cubit),
                    TextFormField(
                      maxLines: 5,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'اترك الخدمة المراد تنفيذها',
                          contentPadding: EdgeInsets.zero
                      ),
                    ),
                    const SizedBox(height: 10),
                    CustomButton(
                      onPressed: (){
                        navigateTo(context, const RequestPreview());
                      },
                      text: 'إضافة لطلب المعاينة',
                      height: 60,
                    )
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
