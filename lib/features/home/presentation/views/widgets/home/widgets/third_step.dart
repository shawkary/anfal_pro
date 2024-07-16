import 'package:flutter/material.dart';
import 'package:ibrahim_project/core/utiles/components.dart';
import 'package:ibrahim_project/core/utiles/styles.dart';
import 'package:ibrahim_project/features/home/presentation/manager/home_cubit/cubit.dart';
import 'package:ibrahim_project/features/home/presentation/views/home_view.dart';
import '../../../../../../../core/custom_widgets/material_button.dart';


class ThirdStep extends StatelessWidget {
  const ThirdStep(this.cubit, {super.key});
  final HomeCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('تفاصيل الوحدة', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600)),
        const Text('يمكنك اختيار واحدة واحدة فقط', style: Styles.textStyle12),
        const SizedBox(height: 10),
        Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            border: Border.all(style: BorderStyle.solid, color: Colors.grey.shade300)),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('اسم الوحدة'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('رقم الوحدة:78387', style: Styles.textStyle12),
                  Text('رقم العمارة:78387', style: Styles.textStyle12),
                  Text('كود العمارة:6827687', style: Styles.textStyle12),
                ],
              )
            ],
          ),
        ),
        const SizedBox(height: 10),
        const Text('وقت الزيارة'),
        const Text('مواعيد الزيارة من 9 الي 5', style: Styles.textStyle12),
        const SizedBox(height: 10),
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('من'),
                  Container(
                    height: 70,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade200)),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.access_time_outlined),
                        Text(' 07:22 ص')
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('الي'),
                  Container(
                    height: 70,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade200)),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.access_time_outlined),
                        Text(' 07:22 ص')
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Container(
          height: 70,
          decoration:
              BoxDecoration(border: Border.all(color: Colors.grey.shade200)),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Icon(Icons.calendar_month), Text(' 25مارس 2024')],
          ),
        ),
        const SizedBox(height: 10),
        const Text('ارفاق صور للمشكلة'),
        Container(
          height: 70,
          decoration:
              BoxDecoration(border: Border.all(color: Colors.grey.shade200)),
          child: Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.photo_size_select_actual_outlined)),
              const Text('يمكنك رفع الصور هنا')
            ],
          ),
        ),
        const SizedBox(height: 10),
        const Text('وصف المشكلة'),
        TextFormField(
          maxLines: 5,
          decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'اترك الخدمة المراد تنفيذها',
              contentPadding: EdgeInsets.zero),
        ),
        const SizedBox(height: 10),
        CustomButton(
          onPressed: () {
            showModalBottomSheet(
              barrierColor: Colors.black.withOpacity(.7),
              context: context,
              builder: (context) => Container(
                padding: const EdgeInsets.all(30),
                height: 400,
                width: double.infinity,
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 70.0, bottom: 50),
                      child: Icon(
                        Icons.check_circle,
                        size: 80,
                        color: Colors.blue,
                      ),
                    ),
                    Text(
                      'تم ارسال طلبك بنجاح',
                      style: Styles.textStyle25.copyWith(color: Colors.blue),
                    ),
                    Text(
                      'نحن سعداء من اجلك 🎉',
                      style: Styles.textStyle16
                          .copyWith(color: Colors.grey.shade700),
                    ),
                    const SizedBox(height: 20),
                    CustomButton(
                      onPressed: () {
                        navigateTo(context, const HomeView());
                        cubit.currentIndex1();
                      },
                      text: 'مشاهدة التفاصيل',
                    )
                  ],
                ),
              ),
            );
          },
          text: 'ارسال الطلب',
          height: 60,
        )
      ],
    );
  }
}
