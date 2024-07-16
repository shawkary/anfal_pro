import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibrahim_project/features/home/presentation/manager/home_cubit/states.dart';
import 'package:flutter/material.dart';
import '../../views/widgets/home/home_view_body.dart';
import '../../views/widgets/settings/settings_view_body.dart';
import '../../views/widgets/talabaty/talabat_view_body.dart';
import '../../views/widgets/wehdaty/wehdaty_view_body.dart';


class HomeCubit extends Cubit<HomeStates>
{
  HomeCubit(): super(InitialHomeState());
  static HomeCubit get(context) => BlocProvider.of(context);

  List<Widget> viewsBody = [
    const HomeViewBody(),
    const TalabatViewBody(),
    const WehdatyViewBody(),
    const SettingsViewBody(),
  ];

  int? currentIndex;
  void navBarIndex(index){
    emit(ChangeNavBarIndexState());
    currentIndex = index;
  }

  List<String> words = ['المغاسل', 'المراحيض', 'المغاسل', 'احواض الاستحمام', 'المحابس والشطافات', 'عوامات الخانات', 'المغاسل', 'تاسيس سباكة جديدة', 'المغاسل', 'المغاسل', 'اخري'];
  List<bool> isChecked = [false,false,false,true,true,true,true,true,true,true,true];
  void changeCheckBox(int index){
    emit(ChangeCheckBoxState());
    isChecked[index] = !isChecked[index];
  }

  int activeStep = 0;
  void changeActiveStep(int index){
    emit(ChangeActiveStepState());
    activeStep = index;
  }

  void firstStep(){
    emit(FirstStepState());
    activeStep = 1;
  }
  void secondStep(){
    emit(SecondStepState());
    activeStep = 2;
  }

  bool isInternal = true;
  void toggleInternalExternalButton(){
    emit(ToggleInternalExternalButtonState());
    isInternal = !isInternal;
  }

  List<bool> isChecked1 = [false,false,false,false,false,false];
  void changeCheckBox1(int index){
    emit(ChangeCheckBox1State());
    isChecked1[index] = !isChecked1[index];
  }

  void currentIndex1(){
    emit(CurrentIndex1State());
    currentIndex = 1;
  }
}