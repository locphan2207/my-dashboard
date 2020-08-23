class Note {
  final int id;
  String title;
  String body;
  DateTime created;

  Note(this.id, this.title, this.body, this.created);
}

List<Note> mockNotes = [
  Note(1, "testing 1", "This is a test", DateTime.now()),
  Note(2, "testing 2", "This is a test", DateTime.now()),
  Note(3, "testing 3", "This is a test", DateTime.now()),
  Note(4, "testing 4", "This is a test", DateTime.now()),
  Note(5, "testing 5", "This is a test", DateTime.now()),
];
