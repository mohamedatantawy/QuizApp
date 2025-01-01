import 'package:bloc/bloc.dart';
import 'package:firstproject/features/addSubject/presentation/mange/cubit/savenamecubit/savenamebox_cubit.dart';
import 'package:firstproject/features/Addmaterial/data/model/qustion.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:hive_flutter/hive_flutter.dart';
part 'addbox_state.dart';

class AddboxCubit extends Cubit<AddboxState> {
  AddboxCubit() : super(AddboxInitial());
  late String snamebox;
   
  Box<QustionAndanswer>? box1  ;
  openbox(String namebox) async {
    snamebox = namebox;
    
    emit(Addboxloading());
    try {
      //Hive.registerAdapter(QustionAndanswerAdapter());
      box1 = await Hive.openBox<QustionAndanswer>('$namebox');
      // BlocProvider.of<SavenameboxCubit>(context).savenamebox(namebox);
      // List<Box<QustionAndanswer>> named = [];
      // named.add(box1);
      print('oppen box $namebox');
      emit(Addboxsucess());
    } on Exception catch (e) {
      emit(Addboxfailure());
    }
  }

  List<Box<QustionAndanswer>> savebox() {
    var box = Hive.box<Box<QustionAndanswer>>('save');
    //box.add(box1!);
    return box.values.toList();
    // print(boxes.first.namebox);
  }
}
