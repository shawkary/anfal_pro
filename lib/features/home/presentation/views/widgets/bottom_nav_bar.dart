import 'package:flutter/material.dart';
import 'package:ibrahim_project/features/home/presentation/manager/home_cubit/cubit.dart';

class CustomBottomNav extends StatelessWidget {
  const CustomBottomNav(this.cubit, {super.key});
  final HomeCubit cubit;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (index){
        cubit.navBarIndex(index);
      },
      selectedIconTheme: const IconThemeData(size: 30),
      unselectedItemColor: Colors.grey,
      selectedItemColor: Colors.blue,
      showUnselectedLabels: true,
      currentIndex: cubit.currentIndex ?? 0,
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'الرئيسية'),
        BottomNavigationBarItem(icon: Icon(Icons.remove_from_queue), label: 'طلباتي'),
        BottomNavigationBarItem(icon: Icon(Icons.category), label: 'وحداتي'),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'الاعدادات'),
      ],
    );
  }
}
