import 'package:flutter/material.dart';
import 'package:ibrahim_project/features/home/presentation/manager/talabat_cubit/cubit.dart';
import '../../../../../../../core/utiles/styles.dart';

class ToggleRequests extends StatelessWidget {
  const ToggleRequests(this.cubit, {super.key});

  final TalabatCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                  onTap: () {
                    cubit.toggleRequests(0);
                  },
                  child: Text('الطلبات الحالية',
                      style: Styles.textStyle14.copyWith(
                        color:
                            cubit.orderNum == 0 ? Colors.blue : Colors.black,
                        fontWeight: FontWeight.w600,
                      ))),
              GestureDetector(
                  onTap: () {
                    cubit.toggleRequests(1);
                  },
                  child: Text('الطلبات المرفوضة',
                      style: Styles.textStyle14.copyWith(
                        color:
                            cubit.orderNum == 1 ? Colors.blue : Colors.black,
                        fontWeight: FontWeight.w600,
                      ))),
              GestureDetector(
                  onTap: () {
                    cubit.toggleRequests(2);
                  },
                  child: Text('الطلبات المنتهية',
                      style: Styles.textStyle14.copyWith(
                        color:
                            cubit.orderNum == 2 ? Colors.blue : Colors.black,
                        fontWeight: FontWeight.w600,
                      ))),
            ],
          ),
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Expanded(
              child: Container(
                height: 2,
                color: cubit.orderNum == 0 ? Colors.blue : Colors.grey.shade300,
              ),
            ),
            Expanded(
              child: Container(
                height: 2,
                color: cubit.orderNum == 1 ? Colors.blue : Colors.grey.shade300,
              ),
            ),
            Expanded(
              child: Container(
                height: 2,
                color:
                    cubit.orderNum == 2 ? Colors.blue : Colors.grey.shade300,
              ),
            ),
          ],
        )
      ],
    );
  }
}
