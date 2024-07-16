import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:ibrahim_project/features/login/presentation/login_cubit/states.dart';


class LoginCubit extends Cubit<LoginStates>
{
  LoginCubit(): super(InitialLoginState());
  static LoginCubit get(context) => BlocProvider.of(context);

  var loginEmailController = TextEditingController();
  var loginPasswordController = TextEditingController();
  var registerNameController = TextEditingController();
  var registerEmailController = TextEditingController();
  var registerPhoneController = TextEditingController();
  var registerPasswordController = TextEditingController();
  var registerRePasswordController = TextEditingController();
  @override
  Future<void> close() {
    loginEmailController.dispose();
    loginPasswordController.dispose();
    registerNameController.dispose();
    registerEmailController.dispose();
    registerPhoneController.dispose();
    registerPasswordController.dispose();
    registerRePasswordController.dispose();
    return super.close();
  }

  bool isLogin = true;
  void toggleLoginRegister(){
    emit(ToggleLoginRegisterState());
    isLogin = !isLogin;
  }

  bool isChecked = false;
  void checkBox(){
    emit(CheckBoxState());
    isChecked = !isChecked;
  }

  bool loginSecret = true;
  void loginObscurePass(){
    emit(ObscureLoginPasswordState());
    loginSecret = !loginSecret;
  }

  bool registerSecret = true;
  void registerObscurePass(){
    emit(ObscureLoginPasswordState());
    registerSecret = !registerSecret;
  }

  // bool validValue = false;
  // void changeValueInLoginPass(value){
  //   if(value.length >= 6){
  //     validValue = true;
  //     emit(ValidLoginPasswordState());
  //   }else{
  //     validValue = false;
  //     emit(NotValidLoginPasswordState());
  //   }
  // }
}