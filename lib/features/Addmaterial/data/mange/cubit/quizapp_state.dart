part of 'quizapp_cubit.dart';

@immutable
sealed class QuizappState {}

final class QuizappInitial extends QuizappState {}

final class Quizapploading extends QuizappState {}

final class Quizappsucess extends QuizappState {
 

 
}

final class Quizappfailure extends QuizappState {
  final String emassage;

  Quizappfailure({required this.emassage});
}
