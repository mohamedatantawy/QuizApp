import 'package:bloc/bloc.dart';
import 'package:firstproject/features/Addmaterial/data/model/qustion.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';

part 'quizapp_state.dart';

class QuizappCubit extends Cubit<QuizappState> {
  QuizappCubit() : super(QuizappInitial());
  int num = 0;

  late QustionAndanswer qustionAndanswer;
  addqustion(String qus, String anwserw,String namebox) async {
    emit(Quizapploading());

    try {
      qustionAndanswer = QustionAndanswer(qustion: qus, answer: 'anwser');
      var qustions = Hive.box<QustionAndanswer>('qustion11');
      await qustions.add(qustionAndanswer);
     
  
      emit(Quizappsucess());
    } on Exception catch (e) {
      emit(Quizappfailure(emassage: e.toString()));
    }
  }
}
