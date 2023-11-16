import 'package:app_notas/src/core/constants/parameters.dart';

class Task{
  String? title;
  String? description;
  String? date;
  StateTask state;

  List<String>? urls;

  Task({
    this.title,
    this.description,
    this.date,
    this.urls,
    this.state = StateTask.Create,
  });

}
