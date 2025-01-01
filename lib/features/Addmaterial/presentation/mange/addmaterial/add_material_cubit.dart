import 'package:bloc/bloc.dart';
import 'package:firstproject/features/Addmaterial/data/model/qustion.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';

part 'add_material_state.dart';

class AddMaterialCubit extends Cubit<AddMaterialState> {
  AddMaterialCubit() : super(AddMaterialInitial());
  int num = 0;

  late QustionAndanswer qustionAndanswer;
  addqustion(String qus, String anwserw, String namebox) async {
    emit(AddMaterialloading());

    try {
      qustionAndanswer = QustionAndanswer(qustion: qus, answer: anwserw);
      await Hive.openBox<QustionAndanswer>(namebox);
      var qustions = Hive.box<QustionAndanswer>(namebox);
      await qustions.add(qustionAndanswer);
      print('sucess and add this material$namebox');
      emit(AddMaterialsucess());
    } on Exception catch (e) {
      emit(AddMaterialfailure(emassage: e.toString()));
    }
  }
}
