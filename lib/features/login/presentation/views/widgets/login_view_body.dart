import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibrahim_project/features/login/presentation/views/widgets/login_form.dart';
import 'package:ibrahim_project/features/login/presentation/views/widgets/register_form.dart';
import 'package:ibrahim_project/features/login/presentation/views/widgets/two_button.dart';
import '../../login_cubit/cubit.dart';
import '../../login_cubit/states.dart';


class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => LoginCubit(),
      child: BlocBuilder<LoginCubit, LoginStates>(
        builder: (BuildContext context, state) {
          LoginCubit cubit = LoginCubit.get(context);
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/images/anfal1.png', color: Colors.blue.shade700),
                  const SizedBox(height: 20),
                  TwoButtons(cubit),
                  const SizedBox(height: 30),
                  cubit.isLogin ?  LoginForm(cubit) : RegisterForm(cubit),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
