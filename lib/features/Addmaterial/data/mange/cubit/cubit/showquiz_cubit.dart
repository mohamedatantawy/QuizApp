import 'package:bloc/bloc.dart';
import 'package:firstproject/features/Addmaterial/data/model/qustion.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

part 'showquiz_state.dart';

class ShowquizCubit extends Cubit<ShowquizState> {
  ShowquizCubit() : super(ShowquizInitial());
  List<QustionAndanswer>? out ;
  showquiz(String namebox) async {
    try {
      var qustions = Hive.box<QustionAndanswer>(namebox);
      out = qustions.values.toList();
      //    await qustions.add(qustionAndanswer);
//  print(out!.first.qustion.toString());
      emit(Showquizsucess(out: out!));
    } on Exception catch (e) {
      emit(Showquizfailure());
      print("dddddddddddddddddd");
    }
  }
}
