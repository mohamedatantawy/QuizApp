import 'package:bloc/bloc.dart';
import 'package:firstproject/features/addSubject/data/model/nameboxmodel.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';

part 'savenamebox_state.dart';

class SavenameboxCubit extends Cubit<SavenameboxState> {
  SavenameboxCubit() : super(SavenameboxInitial());
  List<Nameboxmodel> boxes = [];
  savenamebox(String namebox) async {
    emit(Savenameboxloading());
    try {
     
      var box = Hive.box<Nameboxmodel>('namebox');
      Nameboxmodel nameboxs = Nameboxmodel(namebox: namebox);
      box.add(nameboxs);
      //  boxes.add(box.values.last);
      print(box.values.toList().first.toString());
      emit(Savenameboxsucess());
    } on Exception catch (e) {
      print(e.toString());
    }
  }

 shownamebox() {
    var box = Hive.box<Nameboxmodel>('namebox');
    return box.values.toList();
   // print(boxes.first.namebox);
  }
}
