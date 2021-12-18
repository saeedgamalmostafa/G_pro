import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sentimental_analyst/shared/cubit/states.dart';

class AppCubit extends Cubit<AppStates>{
  AppCubit(AppStates initialState) : super(initialState);

  static AppCubit get(context) => BlocProvider.of(context);


}