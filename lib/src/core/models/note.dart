import 'package:app_notas/src/core/constants/parameters.dart';

class Note{
  String? title;
  String? date;
  String? description;
  String? image;
  bool private;
  TypeNote type;
  StateNote state;

  List <String>? urls;

  Note({
    this.image,
    this.title,
    this.date,
    this.description,
    this.private = false,
    this.urls,
    this.type = TypeNote.Text,
    this.state = StateNote.Visible,
  });
}

  Note note = Note(
    title: 'Mi primera nota',
    description: 'Es mi primera nota',
    date: '2023-10-10',
  );
