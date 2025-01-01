part of 'add_material_cubit.dart';

@immutable
sealed class AddMaterialState {}

final class AddMaterialInitial extends AddMaterialState {}


final class AddMaterialloading extends AddMaterialState {}

final class AddMaterialsucess extends AddMaterialState {
 

 
}

final class AddMaterialfailure extends AddMaterialState {
  final String emassage;

  AddMaterialfailure({required this.emassage});
}
