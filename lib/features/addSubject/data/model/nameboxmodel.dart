
import 'package:hive_flutter/hive_flutter.dart';
part 'nameboxmodel.g.dart';
@HiveType(typeId: 1)
class Nameboxmodel extends HiveObject{
  @HiveField(0)
  final String namebox;

  Nameboxmodel({required this.namebox});
  
}
