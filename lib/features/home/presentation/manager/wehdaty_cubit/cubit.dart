import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibrahim_project/features/home/presentation/manager/wehdaty_cubit/states.dart';


class WehdatyCubit extends Cubit<WehdatyStates>
{
  WehdatyCubit(): super(InitialWehdatyStates());
  static WehdatyCubit get(context) => BlocProvider.of(context);

  bool isFirst = true;
  void toggleTwoButtons(){
    emit(ToggleTwoButtonsWehdatyStates());
    isFirst = !isFirst;
  }
}