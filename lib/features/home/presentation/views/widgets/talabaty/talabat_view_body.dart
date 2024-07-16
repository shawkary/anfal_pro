import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibrahim_project/core/utiles/styles.dart';
import 'package:ibrahim_project/features/home/presentation/manager/talabat_cubit/cubit.dart';
import 'package:ibrahim_project/features/home/presentation/manager/talabat_cubit/states.dart';
import 'package:ibrahim_project/features/home/presentation/views/widgets/talabaty/widgets/current_order_list_view.dart';
import 'package:ibrahim_project/features/home/presentation/views/widgets/talabaty/widgets/finished_order_list_view.dart';
import 'package:ibrahim_project/features/home/presentation/views/widgets/talabaty/widgets/toggle_requests.dart';


class TalabatViewBody extends StatelessWidget {
  const TalabatViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TalabatCubit, TalabatStates>(
      builder: (BuildContext context, state) {
        TalabatCubit cubit = TalabatCubit.get(context);
        return CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text('طلباتي', style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600)),
                    const SizedBox(height: 30),
                    Text('يمكنك مشاهدة كافة طلباتك هنا',
                        style: Styles.textStyle14.copyWith(fontSize: 15, fontWeight: FontWeight.w600)),
                    const Text('يمكنك اختيار واحدة واحدة فقط',
                        style: Styles.textStyle12),
                    const SizedBox(height: 24),
                    ToggleRequests(cubit),
                  ],
                ),
              ),
            ),
            if(cubit.orderNum == 0)const SliverToBoxAdapter(child: CurrentOrderListView()),
            if(cubit.orderNum == 2)const SliverToBoxAdapter(child: FinishedOrderListView()),
          ],
        );
      },
    );
  }
}
