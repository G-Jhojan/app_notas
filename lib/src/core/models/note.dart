class Note{
  String? title;
  String? date;
  String? description;
  String? image;
  bool private;

  List <String>? urls;

  Note({
    this.image,
    this.title,
    this.date,
    this.description,
    this.private = false,
    this.urls
  });
}

  Note note = Note(
    title: 'Mi primera nota',
    description: 'Es mi primera nota',
    date: '2023-10-10',
  );
