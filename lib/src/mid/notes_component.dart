import 'dart:html';

import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';

import '../utils/mdc.dart';
import '../types.dart';

@Component(
    selector: 'notes-app',
    templateUrl: 'notes_component.html',
    styleUrls: [
      'notes_component.css',
    ],
    directives: [
      coreDirectives
    ])
class NotesComponent implements OnActivate {
  List<Note> notes = mockNotes;
  bool showForm = false;
  bool showEdit = false;
  MDCSnackbar bar;

  @override
  void onActivate(_, RouterState current) {
    MDCRipple.attachTo(querySelector('.mdc-fab'));
    bar = MDCSnackbar.attachTo(querySelector('.mdc-snackbar'));
  }

  void toggleShowForm(Event e) {
    Element button = querySelector('.note-add-button');
    Element form = querySelector('.new-note-form');
    if (!showForm) {
      button.classes.add('note-add-button--selected');
      form.classes.remove('new-note-form--hidden');
      showForm = true;
    } else {
      button.classes.remove('note-add-button--selected');
      form.classes.add('new-note-form--hidden');
      showForm = false;
    }
  }

  void focusTextField(String id) {
    MDCTextField.attachTo(querySelector('.mdc-text-field'));
    MDCTextField curr = MDCTextField.attachTo(querySelector('#${id}'));
    curr.focus();
  }

  void createNote(String title, String body) {
    DateTime now = DateTime.now();
    Note newNote = Note(now.millisecondsSinceEpoch, title, body, now);
    notes.add(newNote);
    bar.open();
  }

  void deleteNote(int id) {
    notes.removeWhere((note) => note.id == id);
  }

  void toggleShowEdit() {
    if (!showEdit) {
      showEdit = true;
    } else {
      showEdit = true;
    }
  }

  String getFormatedDate(DateTime d) =>
      '${d.hour}:${d.minute} ${d.month}/${d.day}/${d.year}';
}
