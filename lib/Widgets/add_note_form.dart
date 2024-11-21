import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Widgets/CustomBottom.dart';
import 'package:notes_app/Widgets/custom_text_feild.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_state.dart';
import 'package:notes_app/models/note_model.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: 16,
          right: 16,
          bottom: MediaQuery.of(context).viewInsets.bottom),
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          autovalidateMode: autovalidateMode,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Add a note',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              CustomTextField(
                onseved: (value) {
                  title = value;
                },
                hintText: 'Title',
              ),
              SizedBox(
                height: 25,
              ),
              CustomTextField(
                  onseved: (value) {
                    subtitle = value;
                  },
                  hintText: 'Content',
                  maxLines: 5),
              SizedBox(
                height: 25,
              ),
              BlocBuilder<AddNoteCubit, AddNoteState>(
                builder: (context, state) {
                  return CustomBottom(
                    isloading: state is AddNoteLoading ? true : false,
                    ontap: () {
                      if (formKey.currentState!.validate()) {
                        formKey.currentState!.save();
                        var noteModel = NoteModel(
                            color: Colors.yellow.value,
                            title: title!,
                            subtitle: subtitle!,
                            date: DateTime.now().toString());
                        BlocProvider.of<AddNoteCubit>(context)
                            .addNote(noteModel);
                      } else {
                        autovalidateMode = AutovalidateMode.always;
                        setState(() {});
                      }
                    },
                  );
                },
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
