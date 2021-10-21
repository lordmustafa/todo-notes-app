class Note {
  final String title;
  final String text;
  DateTime? published;

  Note({
    required this.title,
    required this.text,
    this.published,
  });

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'text': text,
      'date': published,
    };
  }

  @override
  String toString() {
    return 'Note{title: $title, text: $text, published: $published}';
  }
}
