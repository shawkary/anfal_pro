import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:ibrahim_project/features/login/presentation/login_cubit/states.dart';
import '../../../../core/utiles/dio_helper.dart';
import '../../data/model/LoginModel.dart';


class LoginCubit extends Cubit<LoginStates>
{
  LoginCubit(this.dio): super(InitialLoginState());
  static LoginCubit get(context) => BlocProvider.of(context);
  final DioHelper dio;

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

  Future<void> login({
    required String email,
    required String password,
  })async{
    emit(LoadingLoginState());
    dio.getData(
      endPoint: 'login',
      email: email,
      password: password,
    ).then((value){
      LoginModel loginModel;
      loginModel = LoginModel.fromJson(value);
      emit(SuccessLoginState(loginModel));
    }).catchError((e){
      emit(ErrorLoginState());
    });
  }
}