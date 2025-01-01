part of 'showquiz_cubit.dart';

@immutable
sealed class ShowquizState {}

final class ShowquizInitial extends ShowquizState {}

final class Showquizsucess extends ShowquizState {
  final List<QustionAndanswer> out;

  Showquizsucess({required this.out});
}

final class Showquizfailure extends ShowquizState {}
