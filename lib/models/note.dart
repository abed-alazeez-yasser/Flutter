class Note {
  late int id;
  late String content;

  Note();
  Note.fromMap(Map<String, dynamic> rowMap) {
    id = rowMap['id'];
    content = rowMap['content'];
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map =  Map<String, dynamic>();
    map['content'] = content;
    return map;
  }
}
