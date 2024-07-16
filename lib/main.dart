import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibrahim_project/features/home/presentation/manager/home_cubit/cubit.dart';
import 'package:ibrahim_project/features/home/presentation/manager/talabat_cubit/cubit.dart';
import 'package:ibrahim_project/features/home/presentation/manager/wehdaty_cubit/cubit.dart';
import 'core/utiles/components.dart';
import 'features/on_boarding/presentation/views/splash_view.dart';


void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => HomeCubit()),
        BlocProvider(create: (context) => TalabatCubit()),
        BlocProvider(create: (context) => WehdatyCubit()),
      ],
      child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Directionality(
              textDirection: TextDirection.rtl,
              child: SplashView()),
        ),
    );
  }
}
