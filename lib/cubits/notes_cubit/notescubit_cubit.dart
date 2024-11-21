import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/Consts.dart';
import 'package:notes_app/models/note_model.dart';

part 'notescubit_state.dart';

class NotescubitCubit extends Cubit<NotescubitState> {
  NotescubitCubit() : super(NotescubitInitial());

  fetchAllNotes() {
    emit(Notescubitloding());
    try {
      var notesbox = Hive.box<NoteModel>(knoteBox);

      List<NoteModel> noteslist = notesbox.values.toList();
      emit(Notescubitsuccess(noteslist));
    } catch (e) {
      emit(Notescubitfailure(e.toString()));
      // TODO
    }
  }
}
