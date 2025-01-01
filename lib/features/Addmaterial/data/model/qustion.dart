//import 'package:hive/hive.dart';

//part 'qustion.g.dart';
import 'package:hive/hive.dart';
part 'qustion.g.dart';

@HiveType(typeId: 0)
class QustionAndanswer extends HiveObject {
  @HiveField(0)
  final String qustion;
@HiveField(1)
  final String answer;

  QustionAndanswer({required this.qustion, required this.answer});

  
}
// @HiveType(typeId: 1)

// class Qustion {
//     @HiveField(0)
//   final String  qaA;

//     @HiveField(1)
//  final String  answer;
//   Qustion({required this.answer,required this.qaA});
// }
