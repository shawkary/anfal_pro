import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibrahim_project/features/home/presentation/manager/home_cubit/cubit.dart';
import 'package:ibrahim_project/features/home/presentation/manager/home_cubit/states.dart';
import 'package:ibrahim_project/features/home/presentation/views/widgets/bottom_nav_bar.dart';


class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeStates>(
      builder: (BuildContext context, state) {
        HomeCubit cubit = HomeCubit.get(context);
        return Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
            body: SafeArea(child: cubit.viewsBody[cubit.currentIndex ?? 0]),
            bottomNavigationBar: CustomBottomNav(cubit),
          ),
        );
      },
    );
  }
}
