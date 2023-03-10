class Note {
  String title;
  String content;

  Note({required this.title, required this.content});

  Map<String, String> toJson() {
    return ({'title': title, 'content': content});
  }
}
