import 'package:flutter/material.dart';
import 'package:note_app/model/note.dart';

class NoteCard extends StatelessWidget {
  NoteCard({super.key, required this.note});

  final Note note;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          //Write callback here
        },
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                note.title.toUpperCase(),
                style: TextStyle(
                    fontSize: 15,
                    letterSpacing: 2,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                note.content,
                style: TextStyle(letterSpacing: 1),
              )
            ],
          ),
        ),
      ),
    );
  }
}
