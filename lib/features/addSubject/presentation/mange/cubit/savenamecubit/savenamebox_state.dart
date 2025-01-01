part of 'savenamebox_cubit.dart';

@immutable
sealed class SavenameboxState {}

final class SavenameboxInitial extends SavenameboxState {}
final class Savenameboxloading extends SavenameboxState {}
final class Savenameboxsucess extends SavenameboxState {}