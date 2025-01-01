part of 'addbox_cubit.dart';

@immutable
sealed class AddboxState {}

final class AddboxInitial extends AddboxState {}
final class Addboxsucess extends AddboxState {}
final class Addboxloading  extends AddboxState {}
final class Addboxfailure  extends AddboxState {}

