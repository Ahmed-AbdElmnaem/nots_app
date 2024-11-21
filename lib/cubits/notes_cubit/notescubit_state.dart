part of 'notescubit_cubit.dart';

@immutable
sealed class NotescubitState {}

final class NotescubitInitial extends NotescubitState {}

final class Notescubitloding extends NotescubitState {}

final class Notescubitsuccess extends NotescubitState {
  final List<NoteModel> notes;
  Notescubitsuccess(this.notes);
}

final class Notescubitfailure extends NotescubitState {
  final String erorMessage;
  Notescubitfailure(this.erorMessage);
}
