import 'package:flutter/material.dart';
import 'package:notes_app/Widgets/CustomBottom.dart';
import 'package:notes_app/Widgets/custom_text_feild.dart';

class Custmbottomsheet extends StatelessWidget {
  const Custmbottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return AddNoteForm();
  }
}

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
      padding: EdgeInsets.symmetric(horizontal: 16),
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
              CustomBottom(
                ontap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
