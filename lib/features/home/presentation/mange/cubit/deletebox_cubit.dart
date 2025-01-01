import 'package:bloc/bloc.dart';
import 'package:firstproject/features/addSubject/data/model/nameboxmodel.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

part 'deletebox_state.dart';

class DeleteboxCubit extends Cubit<DeleteboxState> {
  DeleteboxCubit() : super(DeleteboxInitial());

  deletebox(String namebox) {
    var box = Hive.box<Nameboxmodel>('namebox');
   box.delete(namebox);
  }
}
