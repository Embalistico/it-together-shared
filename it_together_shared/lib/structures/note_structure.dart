// Class for a note to be created.

class Note {
  int? id;
  String title;
  String content;
  String noteColor;

  Note(
      {this.id = null,
      this.title = "Note",
      this.content = "Text",
      this.noteColor = 'red'});

  //Provides the note as a map for the database to handle
  Map<String, dynamic> toMap() {
    Map<String, dynamic> data = Map<String, dynamic>();
    if (id != null) {
      data['id'] = id;
    }
    data['title'] = title;
    data['content'] = content;
    data['noteColor'] = noteColor;
    return data;
  }

  @override
  toString() {
    return {
      'id': id,
      'title': title,
      'content': content,
      'noteColor': noteColor,
    }.toString();
  }
}
