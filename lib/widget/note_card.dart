import 'package:flutter/material.dart';
import 'package:note_app/model/note.dart';
import 'package:note_app/views/main/add_page.dart';

class NoteCard extends StatelessWidget {
  const NoteCard({super.key, required this.note});

  final Note note;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => AddPage(
                        note: note,
                      )));
        },
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                note.title.toUpperCase(),
                style: const TextStyle(
                    fontSize: 15,
                    letterSpacing: 2,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                note.content,
                style: const TextStyle(letterSpacing: 1),
              )
            ],
          ),
        ),
      ),
    );
  }
}
