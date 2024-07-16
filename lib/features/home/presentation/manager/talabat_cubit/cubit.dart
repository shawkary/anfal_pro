import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibrahim_project/features/home/presentation/manager/talabat_cubit/states.dart';

class TalabatCubit extends Cubit<TalabatStates>
{
  TalabatCubit(): super(InitialTalabatState());
  static TalabatCubit get(context) => BlocProvider.of(context);

  int orderNum = 0;
  void toggleRequests(index){
    emit(ToggleRequestsTalabatState());
    orderNum = index;
  }
}